Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD94C36002
	for <linux-phy@archiver.kernel.org>; Mon, 24 Mar 2025 18:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nfJVfYK2FRGbN1AtZvj4bJruTgMo38D9Gvy7f4mS1P0=; b=Tf7LsMxBp5aDTmE7f+QyX3Bodm
	y7vfEj8yijxMAsEnSJcohZRCK/2UJdzjxQdK57hPhyBRwrnkl0mjhfesGh58Kj1gCo3TbLNccUmL+
	3bcfwwsZCgQG3AKP21hyAPIS8tnMDyDOv+vieqx1YyEyIlDlzTV5qebzGH5uWbGYGIAgkJeEX2472
	PgOc4qVwq0mYyYSzF9NAM9haoJBgIYVagRqfvenN2EEZqFYCkwoivmfi8f+Y2mCt73b5NkF7HK6vG
	910o8sm13zza5gYZA3ZgKi+K1xnXK1tEX9k9YMnRFaFE1xKGK3BENJcNVcL6I2+AFzjkrb9d9r4dm
	eWYFYebQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twmFj-00000003vL7-3lEt;
	Mon, 24 Mar 2025 18:10:23 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twmFg-00000003vKN-3x6F
	for linux-phy@lists.infradead.org;
	Mon, 24 Mar 2025 18:10:23 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso4112801f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Mar 2025 11:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742839819; x=1743444619; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6RnDtWvNpOaIVSBxV8j/X1kbaynp04OetAChdyC+3o=;
        b=eFQECVGIuh17DgDBTkhg/DiHOFyEqYojPKt2IDG8bNMN7NBPByxzQQfNiWTlAU7ETS
         uDSUQuA9xYzEkM73Igil/9LU2KBIZG0M70U5VlgWShGcZ2fRiyJsNqugP/N/w13LZMGT
         H3mnIZQUy39m4NLy1bNtaYRLz94jcWegXAxk93CHGKWnxMVzfnE/eY+85VAA72mxerNm
         Jke18a/F6qBJxCqhG4lEW2ebO94F6YJ5zQbGmh2dPPFsyvzRTfigMKgjLxH+uncKyK6H
         eH7FhZThu5Upd+vn0uCLzZkB6ZL8fyHc08K8/P0BS8xoUNfUEyMXwyw4Ay02RRli3c8y
         ZMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742839819; x=1743444619;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G6RnDtWvNpOaIVSBxV8j/X1kbaynp04OetAChdyC+3o=;
        b=Nay58Ndy8NUpWsK1NeSd/IQqw6aBNwrUor27A9vPqz6+jPnxtLsjCiei4oawXDPtfR
         6e4kM39V5TmYyNX3bdGV8+96tvpNvkYRLhZflg0mXa+X/B5kB4WiRotw8dFKCSI7Gj3p
         WERv/w9SUkUhaIo6lq9Yn7o3fGOY6a1TxpkZa8fWooHrYARB96rNZhpgxwjOmp+arMPg
         M65X5zD15M3vgUGs7/3DXzBKpa0ccJ4Hkq7Fih9P9Cs8DmNL4KE+VnGe0ogBI6GAUmCR
         SZVUk/oSx4b+eJbAY0XtmMkXV4EIT38Ws+irt/rAomDEZHO37yQTrtodkzN0TOEAft07
         6Q+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWOUeSqHpiGiFVEW1Wu7bdD9U/gxBfyo1sBNFjfqmSREe3YwqXT5CWuUb4vk+WTykJITF9q8nKgtrY=@lists.infradead.org
X-Gm-Message-State: AOJu0YziOs1La13Nd4LFNFE8HRZqLrxdmN1+PNzYARSNbEm9ynq9sjac
	sA/0hjiv8w03eV6Np6Q88n3e2GPzljTs/tzwd0LjhaRwO4AVY4Hb4YRpFVxTAck=
X-Gm-Gg: ASbGncvHrsAkWU/ZUGU9g8dYN7MDWQ5M+j0d6T7XJuxuM5+zzj8gRoYywxlghFtqlpE
	f6sDqzkUKM9dsVwOxsahyfSy57pIXzwjrfl40wWXxkqRG+fV7cFHDO/RQbzWlTsi0D7QdURCYVy
	0oihrXxQIjDrarY0rRE1RySPC8gp35hzVZZY1TWFUWXVzpRPY6tD+sbiGEfbUzEGjd9wq9cb8mP
	xJg6dx/Sg+OwP9tYpP3ICn63zkOtuNfklQ7yEpDsbyw0ioZO2efN1AYkGsCaYezMUDaFvLZ+Em9
	ETVDW1WQ4ivrcClttoSuuU2WiPxHD5+FbnoOEmTNQ6UXom8agSC1GxmqD+d8M6VTZeoiFyllsdm
	cMqerfMn588hMdnp5
X-Google-Smtp-Source: AGHT+IFQXi6L+IpcN6afMH9c+hEtu1ugnJ/0f83qfJWd2Asbiidts4UoDfjyd3+t8WNtutogARq+Cg==
X-Received: by 2002:a05:6000:21c2:b0:399:6d53:68d9 with SMTP id ffacd0b85a97d-3997f939949mr8863871f8f.38.1742839819049;
        Mon, 24 Mar 2025 11:10:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a356:8d0:d4d:bb5f? ([2a01:e0a:3d9:2080:a356:8d0:d4d:bb5f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b3ff7sm11435193f8f.48.2025.03.24.11.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 11:10:18 -0700 (PDT)
Message-ID: <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
Date: Mon, 24 Mar 2025 19:10:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson
 <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>,
 Linux regressions mailing list <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_111020_991027_877BA672 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 10/03/2025 22:12, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add SM8750 specific register layout and table configs. The serdes
> TX RX register offset has changed for SM8750 and hence keep UFS
> specific serdes offsets in a dedicated header file.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   7 +
>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  67 ++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 180 ++++++++++++++++++++-
>   3 files changed, 246 insertions(+), 8 deletions(-)
> 

<snip>

This change breaks UFS on the SM8550-HDK:

[    7.418161] qcom-qmp-ufs-phy 1d80000.phy: phy initialization timed-out
[    7.427021] phy phy-1d80000.phy.0: phy poweron failed --> -110
[    7.493514] ufshcd-qcom 1d84000.ufshc: Enabling the controller failed
...

GIT bisect points to:
b02cc9a176793b207e959701af1ec26222093b05 is the first bad commit
Author: Nitin Rawat <quic_nitirawa@quicinc.com>
Date:   Mon Mar 10 14:12:30 2025 -0700

     phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750

bisect log:
git bisect start 'ff7f9b199e3f' 'v6.14-rc1'
git bisect good 36c18c562846300d4e59f1a65008800b787f4fe4
git bisect good 85cf0293c3a75726e7bc54d3efdc5dc783debc07
git bisect good b2cd73e18cec75f917d14b9188f82a2fdef64ebe
git bisect bad b247639d33ad16ea76797268fd0eef08d8027dfd
git bisect good 9b3f2dfdad1cc0ab90a0fa371c8cbee08b2446e3
git bisect bad 8dc30c3e4cf8c4e370cf08bd09eb87b0deccd3de
git bisect bad 100aeb03a437f30300894091627e4406605ee3cb
git bisect bad b2a1a2ae7818c9d8da12bf7b1983c8b9f5fb712b
git bisect good 8f831f272b4c89aa13b45bd010c2c18ad97a3f1b
git bisect good e45cc62c23428eefbae18a9b4d88d10749741bdd
git bisect bad ebf198f17b5ac967db6256f4083bbcbdcc2a3100
git bisect good 12185bc38f7667b1d895b2165a8a47335a4cf31b
git bisect bad e46e59b77a9e6f322ef1ad08a8874211f389cf47
git bisect bad b02cc9a176793b207e959701af1ec26222093b05

CI run: https://git.codelinaro.org/linaro/qcomlt/ci/staging/cdba-tester/-/jobs/229880#L1281

#regzbot introduced: b02cc9a17679

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
