Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7236DD1A618
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 13:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZAsrM0ZiHbK7BZtxQqh/K4aY8bEJaz3KOULZTb0pL4M=; b=BVvR2onyImP4k7/tO2tbNBpXQy
	WoWGxnD2Qx85WywT3bRRgEKoNPVcuUsbT38i0Zy+W9UjkeNKFeY9z4Xkh4UA/iFQWqFUTxHJjGIsi
	/durFkStVscb2lIOyIVNlo8N27NJhjsFm0yXEv9fUqPfE8RPtpwzp83uIfolHEUZOHJEs7yaCf8RO
	7vGkFdZsErVOj3zFseU2yDylgKS0ofmj2Na7Wl6hNeBAToo+0FNzRvSxGQUw6S7CkJhWwIyWpZ4C/
	ftc7KDNM9lU6S1A9ntCaAnZcF+euNnOgJ7kpMCernb//0d+1V97XejY4UkWGuuPZWjOFqINHw62Um
	qfZPKY3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCGV-00000002Kuc-2laF;
	Fri, 09 Jan 2026 13:10:56 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCGS-00000002KuH-40qr
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 13:10:54 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-432da746749so340569f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 05:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767964251; x=1768569051; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/jnGnY7d9EQmJF0qpoOG27r3DTavlyRLK7yZTUJLUEw=;
        b=GHdKqOzoq0qRB8DyiTOu29ZWt1lBjAA/ZTWhg84bNbLY30kt6q1C2VR6VsDUrsJJJ7
         i4Y2WhHAskjDiMCyqL5FdknDLFEA9+9iBAktoZMNfqFEVZOglThKhyIr6o/6aWepINHg
         kuWzSQo7KLShRpJ7U9V4hQTxkdpcUmOi60hjS10jUFsBVdr2kLyMFMbVPoCNDT/1d50G
         pUITSJUn0MbizWNpqzbSrMsjBR36cmIFHopROvzvMZavyq919DdvKyZUznc7bpDgwDoE
         BAH7xeZKx8FFAVQaw0aBWYjkxmzbGfzqn/7fLWk/7or2Q/DvLXEULRr94G9cYQreFkt2
         VVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964251; x=1768569051;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/jnGnY7d9EQmJF0qpoOG27r3DTavlyRLK7yZTUJLUEw=;
        b=qZfiG7BwOKordC9Ql37ZCz1wGGGmmRVR59o41Iq+itwoaNh2Ilza2KNCseKfRAUjaO
         T0xMPu3xvTUS/ZflgNNajkfTiQL41iduLj6oSS0fPsejoI9FbvR0BPfVj3LHVS062VCd
         CvWkWH7hxhCNDoeUp5xcSIEykg5qqD7mvlP6kQz09X0kN+tOVFy9IJSQ9CFpDAL9LOND
         G5XXtiN6vRFh0FNEJC9fgM5muhLK/bMLJejAsD1AShaENzf5wQ4cD4BfV/uPgmPo52rX
         4a7LQZFzg8wZt+61H8onlaY3fb/IHminr6s2NQBKwwBRGbsKNkNJ5lOMALd5DllqviRo
         6oHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfOfFBCcSPaEJc5BLgppLnc02UdMwERpQLZe9WF2kVBfEBPNSm+3HKOzUAoZHcGdtk61uGXKUz1sI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9G6nFeVT3yY8brSuNUYHwuZE6B/CgTBLk+OTUoYFK/PrgGy+k
	hNRp9JyD21wJPQoO44Sf9BNsJ5o2mKti8es/ePfqAJi7MuZ3mlD1m57eT+UpX2jrbK8=
X-Gm-Gg: AY/fxX5+/fVkiOtLDm86LQWZeD2+2VsLdjiqedQYC8OJCHNArBMrHLyVXulgYVYvCyY
	Q5yres0vri6NGbb4VtjATYZmUvdrNpZhRE+gmUk6Y+g5nHhQiko10hLH6JVdECV9mfd+7qvhQak
	xszuuscCmb/cGmlK6anhhrjoDDKtfkdo69+eCh4k+w7cSpVB1c+wb3kFUdOefzOcRV2oSMLPvZR
	gP8YbBekuAy7jrHKHJ3/Ul9xwjDXo5jXd4kNfFTUbjfOdnEp2R/Dp0G2bl/b/cuYyz1cB0J+rpY
	A4KCTs9Jk6Iv0anqJjWYdgbyqTpFAB3ZmKQ0IqgZaFNWJQqu7fISLOxTRZoaX3Y4N93B6pnfRCy
	dzaUcij0wXPb8C9JahShWnGRxP5O/fM+qPMf/J1iCH6ifMSsBfw6JmHN6V7PBxq8pirTA8Ds9rG
	/KTASOzd0MEeEyyd5TJAlVAQWKDMbIyWVmx+RJ5VHhKxdg7vf9E2gAPqYUNYYG3Kk=
X-Google-Smtp-Source: AGHT+IFgdSAvFox2GbHHeW8IFjfkNprM6kF+vHsV9BJY9uhB+UR+SlVcOpOUthKkBIB3ngnkaIBk1g==
X-Received: by 2002:a05:600c:444c:b0:477:a977:b8c5 with SMTP id 5b1f17b1804b1-47d84b5b51amr122046305e9.31.1767964250431;
        Fri, 09 Jan 2026 05:10:50 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:6f64:6b96:cac5:a35f? ([2a01:e0a:3d9:2080:6f64:6b96:cac5:a35f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d870e80bbsm67752485e9.5.2026.01.09.05.10.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 05:10:50 -0800 (PST)
Message-ID: <53f0c45f-7f5c-4abd-af84-cbb82d509872@linaro.org>
Date: Fri, 9 Jan 2026 14:10:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/5] phy: qcom: qmp-pcie: Skip PHY reset if already up
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jingoo Han <jingoohan1@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-1-7e6782230f4b@oss.qualcomm.com>
 <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
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
In-Reply-To: <nmle3y6nb4kjcwstzqxkqzaokeyjoegg6lxtmji57kxwh5snxa@p76v6dr7rgsg>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_051053_061081_EB97F169 
X-CRM114-Status: GOOD (  19.78  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 1/9/26 14:08, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 12:51:06PM +0530, Krishna Chaitanya Chundru wrote:
>> If the bootloader has already powered up the PCIe PHY, doing a full
>> reset and waiting for it to come up again slows down boot time.
> 
> How big is the delay caused by it?
> 
>>
>> Add a check for PHY status and skip the reset steps when the PHY is
>> already active. In this case, only enable the required resources during
>> power-on. This works alongside the existing logic that skips the init
>> sequence.
> 
> Can we end up in a state where the bootloader has mis-setup the link? Or
> the link going bad because of any glitch during the bootup?

Good question, can we add a module parameter to force a full reset of the PHY in case
the bootloader is buggy ?

> 
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++----------
>>   1 file changed, 18 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..c93e613cf80b2612f0f225fa2125f78dbec1a33f 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -3153,6 +3153,7 @@ struct qmp_pcie {
>>   	const struct qmp_phy_cfg *cfg;
>>   	bool tcsr_4ln_config;
>>   	bool skip_init;
>> +	bool skip_reset;
>>   
>>   	void __iomem *serdes;
>>   	void __iomem *pcs;
>> @@ -4537,6 +4538,9 @@ static int qmp_pcie_init(struct phy *phy)
>>   		qphy_checkbits(pcs, cfg->regs[QPHY_START_CTRL], SERDES_START | PCS_START) &&
>>   		qphy_checkbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], cfg->pwrdn_ctrl);
>>   
>> +	qmp->skip_reset = qmp->skip_init && !qphy_checkbits(pcs, cfg->regs[QPHY_PCS_STATUS],
> 
> It is definitely not a long-term state, there is no need to store it in
> qmp_pcie struct.
> 
>> +							    cfg->phy_status);
>> +
>>   	if (!qmp->skip_init && !cfg->tbls.serdes_num) {
>>   		dev_err(qmp->dev, "Init sequence not available\n");
>>   		return -ENODATA;
>> @@ -4560,13 +4564,15 @@ static int qmp_pcie_init(struct phy *phy)
>>   		}
>>   	}
>>   
>> -	ret = reset_control_assert(qmp->nocsr_reset);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "no-csr reset assert failed\n");
>> -		goto err_assert_reset;
>> -	}
>> +	if (!qmp->skip_reset) {
>> +		ret = reset_control_assert(qmp->nocsr_reset);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "no-csr reset assert failed\n");
>> +			goto err_assert_reset;
>> +		}
>>   
>> -	usleep_range(200, 300);
>> +		usleep_range(200, 300);
>> +	}
>>   
>>   	if (!qmp->skip_init) {
>>   		ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>> @@ -4641,10 +4647,12 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = reset_control_deassert(qmp->nocsr_reset);
>> -	if (ret) {
>> -		dev_err(qmp->dev, "no-csr reset deassert failed\n");
>> -		goto err_disable_pipe_clk;
>> +	if (!qmp->skip_reset) {
>> +		ret = reset_control_deassert(qmp->nocsr_reset);
>> +		if (ret) {
>> +			dev_err(qmp->dev, "no-csr reset deassert failed\n");
>> +			goto err_disable_pipe_clk;
>> +		}
>>   	}
>>   
>>   	if (qmp->skip_init)
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
