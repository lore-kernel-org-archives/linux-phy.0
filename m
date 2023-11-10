Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95EB8C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bUFD9A/i3Jl1edxs8CGLeGpNn4ebuxGCeOjmabjgtxU=; b=EWcrf+V5c+2+FSZRmfbZBJHgRR
	yQMTV1np2iwmnRlAvZOCTWuTjucHSlHMibmjXjvdbaNC55OdKXqRrEE1OrypFyNzT0NesUvXEbvYO
	kgYoQaJKdhY2A/uyXpakBaPyO7aWAZWu4d7+qDjVt2O0LqaV1lQOLct15+1cp9BfLdObDrkUherKa
	qwDLRL2pVi1Z4Gx13Aplnm/3yTe1jlwYoCUtrZMzTOL9+Kpp1KOE8RyfWklnFWxQhaQKOQx20h19z
	1LjWovxKPNuzxbUVOCjslBCa0GcKLoVpBfA+fkOCfEhiCmdww7nboRDou7v8Sb/k9NhjyOZV29hne
	HqtaYFgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NvJ-008Cap-0W;
	Fri, 10 Nov 2023 09:35:33 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NvG-008CZ1-2s
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 09:35:32 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507c5249d55so2571500e87.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Nov 2023 01:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699608923; x=1700213723; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FtekfsW92aAxO5tWYqkwt6k/7ffnjhMdgCX0hkH5iHo=;
        b=s0nawafJQLEekcHTOwfkkf8uCqPwnE/iseVuer1qUnU62NIX7AKYkjbwtl03OazQIn
         LeSZQAKbG+n5CgOCmZoCqezzsD/tnLB+bplw4vMjBJlG/VLaNH2T1ruIn5xT6vaaPNuN
         cWOCNW+y9ex5q8/ot7bRAcRoCFcPRu3RAF8AoXH/v0+7CEaxs8GI4dFoqCizz0TK1ikB
         xgq/1DS/rMN5NVYlzy596PClinqswt4za+gcnEPPKoLn9ZXyra53uNfbKDcenuRZqaDS
         VhRLHZZwYebKp16GGazqNID2y59Ul7o+Z3VgJtwnRFCpvfyRSnd5Ucwho4IkLTmX4jqo
         G4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699608923; x=1700213723;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FtekfsW92aAxO5tWYqkwt6k/7ffnjhMdgCX0hkH5iHo=;
        b=r9gX8/++VedZR14/KDas5vJkvHmVJgQ6D0ZEMl1AT3RWM4EekR2o0AuGdZNoRAkS0M
         EaPzPs/Wh2EiIa3S8nDWPShh7xkwZRV7jEZhbub53G3bB8nawuuiDUhxR2yi64/joRcT
         LdrveQHoIUr12dvHvs2G9hog/HGJrAiWCe51nRtopkBVESfqlajeqFXzg9nbQ8+lfMXy
         uekUV2xq3lpL16fhr4pgyHn3Sk3LImgyJIIZbcPate9w0okkygIIcf37k4wice01Q7vp
         ZYET7UpspM+hJWPTMr2eOjbbE5Sptm4BcktS4LCZiVwiAGavJfajICJIVGCraJKWtA/D
         13mg==
X-Gm-Message-State: AOJu0Yxc/AedKrHx6pL1MdJHs1O7qIf95Wtrwzaw15/N17BDmIvCxPTQ
	TAMcSWnvp/4AcusBZDbpKp/Ddg==
X-Google-Smtp-Source: AGHT+IG2+V3ovERFSNRh2TJnHp7bmnc2t+ohxyCJ+0Ga2lzbOUtZb2Vh2Xpa+KUMrIz6w31sbVO6Mg==
X-Received: by 2002:a05:6512:313a:b0:509:3bba:e8a with SMTP id p26-20020a056512313a00b005093bba0e8amr3570628lfd.39.1699608922950;
        Fri, 10 Nov 2023 01:35:22 -0800 (PST)
Received: from [192.168.7.189] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id g5-20020adff405000000b003313439c675sm1511328wro.66.2023.11.10.01.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 01:35:22 -0800 (PST)
Message-ID: <bdc876bf-78a0-4dea-b090-5fbff5917deb@linaro.org>
Date: Fri, 10 Nov 2023 10:35:21 +0100
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
 <10cbb859-bdbf-4763-9887-fa13003b58cd@linaro.org>
 <44554283-8436-2208-ab75-3e61d89dc96b@quicinc.com>
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
In-Reply-To: <44554283-8436-2208-ab75-3e61d89dc96b@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_013530_931936_BBF1966D 
X-CRM114-Status: GOOD (  17.13  )
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

On 10/11/2023 10:32, Can Guo wrote:
> Hi Neil,
> 
> On 11/10/2023 5:17 PM, neil.armstrong@linaro.org wrote:
>> Hi,
>>
>> On 10/11/2023 10:03, Can Guo wrote:
>>> Hi Neil,
>>>
>>> On 11/10/2023 4:47 PM, neil.armstrong@linaro.org wrote:
>>>> Hi,
>>>>
>>>> On 07/11/2023 05:46, Can Guo wrote:
>>>>> From: Can Guo <quic_cang@quicinc.com>
>>>>>
>>>>> On SM8550, two sets of UFS PHY settings are provided, one set is to support
>>>>> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
>>>>> settings are programming different values to different registers, mixing
>>>>> the two sets and/or overwriting one set with another set is definitely not
>>>>> blessed by UFS PHY designers. In order to add HS-G5 support for SM8550, we
>>>>> need to split the two sets into their dedicated tables, and leave only the
>>>>> common settings in the .tlbs. To have the PHY programmed with the correct
>>>>> set of PHY settings, the submode passed to PHY driver must be either HS-G4
>>>>> or HS-G5.
>>>>
>>>> I guess I'll need to rebase my SM8650 UFS PHY driver to support both G4 and G5 modes
>>>> at some point ?
>>>
>>>
>>> Thank for reaching out. Yes, please.
>>>
>>> I can help review the PHY settings.
>>
>> Ok I'll try rebasing on this serie and add G5 support.
>>
>>>
>>> BTW, are you enabling MCQ (by adding MCQ related DT) at the same time?
>>
>> I tested MCQ but it triggers the same issues we have with suspend/resume on SM8550 & SM8650,
>> and the bindings are not present of the UFS qcom node.
> 
> Are you talking about suspend/resume fail with rpm/spm_lvl == 5? If yes, then Nitin and Naveen are working on fixing it.

Exact, if you have some changes for me to test, I'll be happy to have a run on 8550 and 8650.

> 
> If you have plan to enable UFS MCQ on SM8650 later, please let me know, I have some BUG fixes for it, we can co-work.

Yes I plan to when basic SM8650 support gets merged, same I'm able to test some changes if needed.

Neil

> 
> Thanks,
> Can Guo
> 
>>
>> Neil
>>
>>>
>>> Thanks,
>>> Can Guo.
>>>
>>>>
>>>> Neil
>>>>
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
