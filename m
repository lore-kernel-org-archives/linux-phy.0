Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1AB4C25B4E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 09:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vomNWW/dBX7HxLy9+BNTmxz6aX97BIpDhvs4+qVC4FA=; b=aX0jYF9bvZ5Kfr
	1AuWyGMUqYBUANn6flKdi9aRnj2BORO93S9NygSvHWwJ/iiZfwJVFLFkyLDF1DqSHAyTKmDWRONQJ
	sTnZv/icBeedsQXYlAToxumElNTG47z7xsxF35hMchGRupkNech7ftZuiT7+en3aHxWA/Yz28ZDIC
	s7Nq0trPaz06sOMiPvYTjZhMImtcziemMbfd3DzwhbSj6FBiVT3oNBrLlZdxDVZH/VZibXf/OWbBG
	nhPUGnInYP6BJudTTk6yjiAhSUpc88ETsokG2U+SamXX5h1IqDBn6CXZgS/jX2f7cP4wHTJzTzhhu
	LMAMoKymAz+J+7CjxBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKFSv-002rEV-7s; Tue, 24 Jan 2023 09:19:41 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKFSs-002rBw-9A
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 09:19:39 +0000
Received: by mail-ed1-x536.google.com with SMTP id v10so17539094edi.8
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 01:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P3b+zZ3ag0hEuuNzEBfm3AsRPxEk4uWTHAhqNBuaXhs=;
        b=Q1WWnuz/2DHYiEeHVIv68Fuu0RjxK6bMdDj/TNq1YjI87sc364h/7OB3BodLNpSuTt
         mmFt2JyN9u5q7AjN94YCfNW3V0bFaNIk9JO6GbTMaUM7nkw3pl64T7dLFHqkLvE8jG/f
         6+lNy1/+1tzlAtYJN0MlapokRD+92vMtG8jlOIvY7gh06FmhOGlZ42YNrcNvpXAmUrlD
         MiQUxjFrYcXpeD1LX9QnRMqO1omNOCJMDS/VCbmJ23U09HUaXKpUsR5sbsFHz7uDxY8Q
         DMqKAE+wLHXbupu0XPpS0T35JY2Pi2WPV38qKKA6n5udUhpI9mp0yhMLtgDuDZ4FCAof
         OxFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P3b+zZ3ag0hEuuNzEBfm3AsRPxEk4uWTHAhqNBuaXhs=;
        b=Hoby0YDCMHPknvrKTrKESzaofVs3AAjyrWVQMskLvi/X3vfBIQTYM6hQ/Zv+i0vtNP
         XwEVLRVlkwYPwlGJ7CJO8dO9rTktMzIbYNgMdJLoYSOKKdPWcDJKkbW3Q8juolsAcNKY
         mkeLnezDivXSfkbm5/5nfXPZmxDIaszeB3e6yyY9GHFc3t4upDJERyBmWLHKIAJRikuc
         gX5wERp9depPrBHZiIaXOy61MJtB2C2nRTlt333lqxHzymq6/xmjEAwsyqBc8lV33khF
         2PUgdOAclQfiY+SFLQywbT1/f7ND55pDAU37Cq8E7tF8N7BTi4aBZOxSjzibkK1rAhw3
         8TNA==
X-Gm-Message-State: AFqh2kofFm9LpOX5AqAWM4e8VIiFqBXOm3/ZAEPnW/p6ftHRdr4K2Ejx
	4T7n4jGhq0BfhUsJO5AE8mQD+A==
X-Google-Smtp-Source: AMrXdXuckgGg73ikSf9utMHlzJ4xzVvpZPBINHL8g6KRm66GCU4U0olqIQM084JpFd2SF1e+/AZnxw==
X-Received: by 2002:a05:6402:413:b0:499:d199:6614 with SMTP id q19-20020a056402041300b00499d1996614mr27872469edv.36.1674551974548;
        Tue, 24 Jan 2023 01:19:34 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id g6-20020a056402114600b0046c7c3755a7sm792580edw.17.2023.01.24.01.19.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 01:19:33 -0800 (PST)
Message-ID: <2fa21add-0198-937c-2de4-05f0f0a102df@linaro.org>
Date: Tue, 24 Jan 2023 11:19:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] phy: qcom-qmp-combo: correct DP register offsets
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
References: <20230123120807.3101313-1-dmitry.baryshkov@linaro.org>
 <Y86TDYOKtpcLdZYx@hovoldconsulting.com>
 <CAA8EJppU4nQRYWwAahWtjrVbU1ywF4P+zxHs1PZm98bzKswiZA@mail.gmail.com>
 <Y8+KSV/0Jk9nnntK@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y8+KSV/0Jk9nnntK@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_011938_372839_1101D345 
X-CRM114-Status: GOOD (  19.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/01/2023 09:35, Johan Hovold wrote:
> On Mon, Jan 23, 2023 at 08:59:48PM +0200, Dmitry Baryshkov wrote:
>> On Mon, 23 Jan 2023 at 16:00, Johan Hovold <johan@kernel.org> wrote:
>>>
>>> On Mon, Jan 23, 2023 at 02:08:07PM +0200, Dmitry Baryshkov wrote:
>>>> Correct DP register offsets used with new DT bindings scheme. First, DP
>>>> TX registers reside in separate regions, not in the same regions as USB
>>>> TX registers do. Second, correct DP_PHY region offset to follow the
>>>> offset used for earlier generations/bindings.
>>>
>>> No, this patch is broken. SC8280XP is different, doesn't seem to have
>>> separate DP TX regions and the DP_PHY registers lies at a different
>>> offset than on previous generations.
>>>
>>> You can't just pull these numbers out of your ... ;)
>>>
>>> This is the only platform that I can test the DP part on and it is
>>> working. If that happens to be by chance, then you need to blame the
>>> commit adding support for sc8280xp (i.e. not the one that fixed the
>>> binding). And note that this was added by Bjorn who do have access to
>>> the documentation for this SoC (as well as actual hardware).
>>
>> Ack, let's wait for Bjorn to check the offsets. I find it extremely
>> suspicious that dp_txa/txb use the same region as usb txa/txb do.
> 
> Yeah, I agree, it seems odd, but then again the sc8280xp PHY is a
> different beast which also supports USB4, etc. The DP_PHY offset comes
> from the header file in the vendor tree and there are no separate DP TX
> registers there.
> 
> By the way, I forgot that Bjorn actually copy-pasted the devicetree
> nodes from an earlier platform when first adding the PHY and only later
> realised that the DP part did not work. The fix for that (e.g. to use
> the same TX registers) was never merged to mainline (instead we
> temporarily disabled the DP part) so the Fixes tag you used would have
> been correct if this turns out to be wrong.

Let's check with Bjorn. However even if the original offsets are 
correct, I think we should add dp_txa/dp_txb offsets (and make them 
equal to txa/txb in sc8280xp case). WDYT?

> 
>>>> Cc: Johan Hovold <johan+linaro@kernel.org>
>>>> Fixes: 83a0bbe39b17 ("phy: qcom-qmp-combo: add support for updated sc8280xp binding")
>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
