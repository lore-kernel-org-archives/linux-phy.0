Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8296E7717D
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 14:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1j5Gz8B4+crpfoaQSmBay9hhft+AKIs5VMR+F7Gydaw=; b=O6oVSyDNsn0zU1WJ6Ef/viGVnA
	KEds+uibVyLqqan8lvvB/7rrQRuc2dcPqEzqQ6aGMeQUq3BKfZeWq7kt/IVYS5VPw9L0zsK6FA70p
	6GoVB9FgpYK7HmJnr2ieYyspZXxRPezsZ20dleqYIATorAB1+mvKgkPX2rsbt20rj1uNp6+IOjS8T
	D+Mz+AMJDNSzXkixWD/oGHmnvCbrvB3j3ngxYRSZbh4I6aL9j9V7ON20UivSpBK9Sz31v5ZOoIGr2
	5zkPTauoBAsAdtaf0u7JG72gifuWWOcdkXldt4wGMDPH3hoxWWp5p8HbmkV98bVWqWGzm9ODanbro
	tnJH1GUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKesM-00000008E6h-0bVm;
	Mon, 09 Dec 2024 14:36:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKesK-00000008E6O-0EOm
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 14:36:41 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-435004228c0so1971915e9.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Dec 2024 06:36:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733754998; x=1734359798; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iybk4BF/6wykwp3WZSJYg6zEzjmSlg73jx7zsIMKcsM=;
        b=t5PkKbBMLU4OCvw72tZRdoxp7EpLpAwrXrI0cmz8vuWtjXBz+3VJ4Nyk05JrkGOkb/
         z/G1yhLtqGYZ5N2+G2DWWkioI2PpC//RAwGbdxmbOl8hvsw8uPhG3mRzKk6FjoYfMZo8
         y36wB+fEjIPBDJHBHVG6FKFhGFfeYSalZrdG1gcmm6K14/f1545iTl+eiRmDWUSJvQev
         etVzDwyxuFB2JACCZ+9rspStYllkeyyR63P8qvl1THSGxghYdfOVZhiOrEdk0ijHBgdP
         FU4SytQX5Rj0qORLutfpbLD64S5OYyn/clbPeZBcjtMknO69U/PkV5lCgXyQ9DMKYcqV
         kNag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733754998; x=1734359798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iybk4BF/6wykwp3WZSJYg6zEzjmSlg73jx7zsIMKcsM=;
        b=pv+6ZOCRczUmh2jqXZ3UI4pkOJcCXmO5j2T4ItvRKTCNEHUKsGeKN2nVZhkEthlqpX
         LcDhtqjgIS82vXVkzdiIxmTC2p9mC+asd70Ay91HOkq1gi+PlqzhWTpJUnZVcoCjUUNW
         bqCpUeBEnn6FdIsCQ41yMbQM0gwLgAyvldmWlRrijFK5hDcqdpqugkuis+jZvlCO/mwe
         HZBgr7V+n4CHzASKql8rhUjWnq0eovHE7O7TpQuyOuzIhoFuXo8W6ToE4RxxcYvAMTZ1
         2Ki7IPVOEwZDtydZZ3ZTuxoePps4DZbob4WO293vr4szLAZ0fG1ugpyT0Je0YBL3n0nC
         tuog==
X-Forwarded-Encrypted: i=1; AJvYcCUyDunv/2wUMV+7izvw2ufxN5PqNfw3uHCxwDptY1eWFa7tOJKxlGc4UaYJQf/gzEHeCoYHkiwFnhY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTmBHc8tLc73ZhMnwptJgAgWQgL+xsZNp14n52az06zWu3H6Ml
	cCuuek49FPosgHrH49hTEEdsPbRu3vNlW/A1nt6ZC8otBuxEVkatLszFp+ixGm0=
X-Gm-Gg: ASbGnctKvTZwAJ+c0jxx9jlN5JuoqZDGkZ/tm1kOAeiilhKCKjeKHYXfZYC8Frei9jK
	aGcV91opYGqnWxn4gXGnOwPsPqkTgk9NwgYPdV62l1hOcg5xfHcYOH+HZDTM180t8U4l4lirbl7
	1FhUCOI0EsLKU1quqlpkY5GBH0UbGdHUaavnl03mj2KBkAvVmf6TQEs4QB1rajQUG3lPw4obKcM
	Xp8MxixJQLokqhKT/p2zcqXYyFtK5DH8a0A1w0znJ4/THvxaFEQmbLdBfZytsmvQ2N7DYZvfywY
	z9hePwG/1l5Kn+bxjrSSbd38jAc=
X-Google-Smtp-Source: AGHT+IEOK4H9LaTjsgxxy12uduCW2tkis7WEZcINrqzjSdHPEzoWLoWraQGVXtmGhjBHA/RvfogtGg==
X-Received: by 2002:a05:600c:5101:b0:434:f131:1e71 with SMTP id 5b1f17b1804b1-434fff3d84cmr8767285e9.8.1733754998160;
        Mon, 09 Dec 2024 06:36:38 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:7546:6147:f006:709b? ([2a01:e0a:982:cbb0:7546:6147:f006:709b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0d2637sm160086625e9.2.2024.12.09.06.36.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 06:36:37 -0800 (PST)
Message-ID: <f85d5206-85cd-4246-826f-811624afad2e@linaro.org>
Date: Mon, 9 Dec 2024 15:36:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-pcie: document the SM8350 two
 lanes PCIe PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
 <uvgu5fpcoxmqnlqlu2evtufy7qtwl7bfztzpmxtvqsr7lvcdy7@645q74bovcyo>
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
In-Reply-To: <uvgu5fpcoxmqnlqlu2evtufy7qtwl7bfztzpmxtvqsr7lvcdy7@645q74bovcyo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_063640_140851_4F50C571 
X-CRM114-Status: UNSURE (   7.98  )
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

On 09/12/2024 10:39, Krzysztof Kozlowski wrote:
> On Wed, Dec 04, 2024 at 11:34:50AM +0100, Neil Armstrong wrote:
>> Document the two lanes PCIe PHY found on SM8350 SoCs along the
>> already documented single lane PCIe PHY.
>>
>> This fixes:
>> /soc@0/phy@1c0e000: failed to match any schema with compatible: ['qcom,sm8350-qmp-gen3x2-pcie-phy']
> 
> Maybe we will succeed this year...
> https://lore.kernel.org/all/20240124-pcie-aux-clk-fix-v1-5-d8a4852b6ba6@linaro.org/

Damn, I must improve my mailing-list search...

> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
