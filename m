Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ADABC4167B
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uAh12TECW+7Q2eCs6K0LGWW5xO56fVqckUmU8/0yPgY=; b=QEhkcE+Lzn4P8rJTWVHz/7en+3
	oOGUj3qxA8j10SJ22u1Kbr4CMat0CnBVaDClVUjfuQqRtPHHIka8dQFjTgjEBVBqCP6dUAjujp4gG
	hl1T8ilHxCOmIlGpdr3Z70HtcDQD8G2zHmuYwshMRk8WgS+5nniJKXmb0tkAMzFoxL/5goHZEECBI
	V72WyykpkSi0LOdm33XdERn86a6m04kTDr6RLq2lnXZWiouOZL+CDq5hsKFTNHxHpxT/P1jvRuAt6
	Q0OfLLGDSph+dlVDtGpkP1rId6gvwDMikBN5kBsflx36FPUEqLUrXOJpko+zsZ5IGiEnKG6JBVPBw
	VeqjQW6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NeN-008AHB-2Z;
	Fri, 10 Nov 2023 09:18:03 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NeL-008AFh-0a
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 09:18:02 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54366784377so2913741a12.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Nov 2023 01:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699607877; x=1700212677; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4LYDpBcl0MlEH+R1oWmv0xRfeWfotESF7unF3rtHosM=;
        b=deL7CG214sD+X3ZLxYWq7c10CScZ6MeQI1QQ3xoaJLn1HPp0h3ZpfRrQtioOkaC8c/
         uyEWTvCgN/9nmbmL2RT1ImnY1hdXBdUZHzp6nSaZxLCZaUfqHRDdsR8xraTlF5+cvEc4
         rD7Dmr9uvSaQxFIPQp7NtcVV99NUzv7DMAjzsYNcZMrUtqE8AJkVZh0OJGGulwj05BNJ
         29pLw6awdldWdSrzq0OtEDnKkY/o9LVpAH+T8zS8BZB2nIaSW9Z+fa3Up5+4AlGRossn
         ZWbLlHXN2d9IbJK8yC6WwqSVA3n2VcLcoImmp6KMoGXa0iF1mHVuowHtSmpw4FTFwJJK
         NKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699607877; x=1700212677;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4LYDpBcl0MlEH+R1oWmv0xRfeWfotESF7unF3rtHosM=;
        b=P7rq0V+Zqd+7+R+FXHRN52hZxeo3uhBiIca+YX1crR+62eoqdDiJpGeEkRE/7a1w28
         DXvN/3DPmoZLvMcU0/0a09xV1bf0U+tCmmldP4JEZtSVQcZ3tESsX503uNmGohcpTdU/
         eAttVtpXOE5gu2TSEdM/ywUqZVGQLPp31fjrkcPyionIbgyLHlKbysYtSZpU/BP8eyyd
         GW6hcuvtKw/G0Yjr8od0lwWw8HcO+gpbhV62BqyGe5LcM1sxuPlyQCT5+zr6sVFU7x98
         uY5l9X/YLZfnH4Bwi04l9twc3EzcPPphKasAG1hXbgXIFikYB8lc7ZINAeiv8v/VsNu1
         zgkg==
X-Gm-Message-State: AOJu0Yz03oyGYE0rJ8tGO0+z+F5pgh5c7grZbQOI9E6kfrmEJ9pJlmDJ
	2hQ19DHNpC95Vk3PdAZ77hCmYA==
X-Google-Smtp-Source: AGHT+IEi+jnigMNlZUp5tY2hieuoJdQ+0SEgWhSPbTbvPnM2yM5Sou8lXJBCGZLHxF5rHcGAfKoDWQ==
X-Received: by 2002:a17:907:7b95:b0:9c7:59d1:b2c9 with SMTP id ne21-20020a1709077b9500b009c759d1b2c9mr6807869ejc.17.1699607876897;
        Fri, 10 Nov 2023 01:17:56 -0800 (PST)
Received: from [192.168.7.189] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c350700b004090ca6d785sm4601196wmq.2.2023.11.10.01.17.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 01:17:56 -0800 (PST)
Message-ID: <10cbb859-bdbf-4763-9887-fa13003b58cd@linaro.org>
Date: Fri, 10 Nov 2023 10:17:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 6/7] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Content-Language: en-US, fr
To: Can Guo <quic_cang@quicinc.com>, Can Guo <cang@qti.qualcomm.com>,
 bvanassche@acm.org, mani@kernel.org, stanley.chu@mediatek.com,
 adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com,
 junwoo80.lee@samsung.com, martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <1699332374-9324-1-git-send-email-cang@qti.qualcomm.com>
 <1699332374-9324-7-git-send-email-cang@qti.qualcomm.com>
 <e4bafeaf-bbeb-4990-b6f2-497159995910@linaro.org>
 <c3fb1fa1-4ba6-613f-a545-79e0e4b2658f@quicinc.com>
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
Organization: Linaro Developer Services
In-Reply-To: <c3fb1fa1-4ba6-613f-a545-79e0e4b2658f@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_011801_220860_64C330E9 
X-CRM114-Status: GOOD (  13.59  )
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

On 10/11/2023 10:03, Can Guo wrote:
> Hi Neil,
> 
> On 11/10/2023 4:47 PM, neil.armstrong@linaro.org wrote:
>> Hi,
>>
>> On 07/11/2023 05:46, Can Guo wrote:
>>> From: Can Guo <quic_cang@quicinc.com>
>>>
>>> On SM8550, two sets of UFS PHY settings are provided, one set is to support
>>> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
>>> settings are programming different values to different registers, mixing
>>> the two sets and/or overwriting one set with another set is definitely not
>>> blessed by UFS PHY designers. In order to add HS-G5 support for SM8550, we
>>> need to split the two sets into their dedicated tables, and leave only the
>>> common settings in the .tlbs. To have the PHY programmed with the correct
>>> set of PHY settings, the submode passed to PHY driver must be either HS-G4
>>> or HS-G5.
>>
>> I guess I'll need to rebase my SM8650 UFS PHY driver to support both G4 and G5 modes
>> at some point ?
> 
> 
> Thank for reaching out. Yes, please.
> 
> I can help review the PHY settings.

Ok I'll try rebasing on this serie and add G5 support.

> 
> BTW, are you enabling MCQ (by adding MCQ related DT) at the same time?

I tested MCQ but it triggers the same issues we have with suspend/resume on SM8550 & SM8650,
and the bindings are not present of the UFS qcom node.

Neil

> 
> Thanks,
> Can Guo.
> 
>>
>> Neil
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
