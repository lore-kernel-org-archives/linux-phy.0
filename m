Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DD5EC25B50
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C92BYph6jKiwuLB14Qgp/PmRpoVtA2NqwBdsAJaWy2s=; b=UbZ4r67CLcbQYX
	WGwUCNGvEWphJnCs+3jTZ6dIOZjjc3OB8yt7UYX09enkeuRluTO3Q5O13rNg4a5GQVh+jb8ZsM76z
	CqeXGEHCkwS0gCEQ6OsEdNcx+oORRatWqwWL++aRVeVUKMsIPcoEePQOXw+Oj1rxrEAdr3btoG8Kq
	u0uSTZDgYUyULSLQML5b8Yr2g+HYeOX6Tu2rbB7saA33vy2joPbCEH8RqpR+BHUhb5mKAwqsE2HjG
	N8yTnkvhlNy0RUnztDHwRAnNHmMRTQG1VWAd8MrsZUB0IuL3DbQCCJLAjRmVqRng+wPkpyf8OCPeI
	udQ6LvVN0WJ0f6ygR5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJunw-00GwTG-Ln; Mon, 23 Jan 2023 11:16:00 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJunt-00GwSH-6L
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 11:15:59 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x40so17594275lfu.12
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 03:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HH1uzsSOvUk+omu0M11s6U92RNmYS6PBTKn4lxmcOVk=;
        b=RHUuID4Gir13mk3w1OPYpj8HE8HLDqpo4xdheNtcWs+G+xosCUB/hhwPns9XyGVcec
         uPtTypCCtQJL0C+GMfZKEn5k7vuQFljHV/xLqFvaqO2NL9EvAwB3NNMsOtYtcvl6DQAb
         71PvNXWenEDi319Uatro8+CNjXmPn5Q1bVJNYuabDozYC2PdQqbfmlCRLRry2Ck94/Hw
         as65rp3vT7VQK7KOBySs365CYNHkPwI6SBqjCmLkoDDPgG/0TglBF/lkpH+6mF/DtZE2
         BOG26x7A7w4Ue6eJgWieKBd2ckVnzffb0V+NdPbZkDT59+7YHfgPLhLJTpUUP+kui4xw
         qHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HH1uzsSOvUk+omu0M11s6U92RNmYS6PBTKn4lxmcOVk=;
        b=lkTBzhmAPfMGTP9L15ssbV3rfeblX96zd9RTR0UkXQw0baC5gXl4tH9g2MnhE4BT5s
         J5DyhAT8UifDLRR0gNug0GxXjzBJmk02LCv1WZSzgUo9T3YP8WL5S/6TEmXq5MpJH7Tl
         nRRr+Feb1D3/xuBp52hFyK/sT7++RkMCbERzopJ3WFxRwaaN0lVjxn19MNAOxOy/cdiZ
         a9FupjVjwXDrsVRuOxzpdPYCcKI27igZB7nofz/70NAuyveDcWCBDqNuRh74rsrsj0x/
         Wc+udvDehQ87n+jcWgaX8MVoX16c+19kY/td4rZed1OsAw+iIikEzNlyk6WXKjqsfHQP
         zL4w==
X-Gm-Message-State: AFqh2kpZCV4Ql9wzLaTsRJ1UU6oaCeyQxClGktTQ+LlEiV9rbLvpoVki
	U7RjmXkdFHFvB0MoJi6UHMvriw==
X-Google-Smtp-Source: AMrXdXuXrzTxFszKmenl73xzcH/9sJH6S2IexBcaY4hbCfvoGGlbZ+6WLmWBv6bb0NUQ3OsclFPTyw==
X-Received: by 2002:a05:6512:1108:b0:4d1:7923:3b92 with SMTP id l8-20020a056512110800b004d179233b92mr8270249lfg.50.1674472554019;
        Mon, 23 Jan 2023 03:15:54 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w4-20020ac24424000000b004cfcbd87df6sm2704254lfl.95.2023.01.23.03.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 03:15:53 -0800 (PST)
Message-ID: <a18359f8-6495-dbea-2323-8ab73bbfc472@linaro.org>
Date: Mon, 23 Jan 2023 13:15:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>, Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com> <Y8BIX+js1ircJyb9@matsya>
 <cf968a25-02f7-d402-530b-eb379b707e54@linaro.org>
 <CPR2LS3SJQ3I.Z7UY505COG3@otso>
 <CAA8EJpoOMMALHz7ysft6KvQaYhGWPD+xZiUjOTrC8CA_y81n-w@mail.gmail.com>
 <CPX2VVT5EUDV.2LH6VI2586F02@otso> <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y85WqDrGXAXp7gS/@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_031557_285758_BC87CA12 
X-CRM114-Status: GOOD (  31.59  )
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

On 23/01/2023 11:43, Johan Hovold wrote:
> On Fri, Jan 20, 2023 at 03:13:46PM +0100, Luca Weiss wrote:
>> On Fri Jan 13, 2023 at 2:01 PM CET, Dmitry Baryshkov wrote:
>>> On Fri, 13 Jan 2023 at 14:44, Luca Weiss <luca.weiss@fairphone.com> wrote:
>>>>
>>>> Hi Dmitry,
>>>>
>>>> On Thu Jan 12, 2023 at 8:33 PM CET, Dmitry Baryshkov wrote:
>>>>> On 12/01/2023 19:50, Vinod Koul wrote:
>>>>>> On 28-12-22, 15:17, Johan Hovold wrote:
>>>>>>> Luca, Vinod,
>>>>>>>
>>>>>>> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
>>>>>>>> Add the tables and config for the combo phy found on SM6350.
>>>>>>>>
>>>>>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>>>>>> ---
>>>>>>>> Changes since v2:
>>>>>>>> * Drop dp_txa/dp_txb changes, not required
>>>>>>>> * Fix dp_dp_phy offset
>>>>>>>>
>>>>>>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
>>>>>>>>    1 file changed, 126 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>>>>>>> index 77052c66cf70..6ac0c68269dc 100644
>>>>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>>>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>>>>>>
>>>>>>>> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>>>>>>>>            "phy",
>>>>>>>>    };
>>>>>>>>
>>>>>>>> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
>>>>>>>> + .com            = 0x0000,
>>>>>>>> + .txa            = 0x1200,
>>>>>>>> + .rxa            = 0x1400,
>>>>>>>> + .txb            = 0x1600,
>>>>>>>> + .rxb            = 0x1800,
>>>>>>>> + .usb3_serdes    = 0x1000,
>>>>>>>> + .usb3_pcs_misc  = 0x1a00,
>>>>>>>> + .usb3_pcs       = 0x1c00,
>>>>>>>> + .dp_serdes      = 0x1000,
>>>>>>>
>>>>>>> I would have expected this to be 0x2000 as that's what the older
>>>>>>> platforms have been using for the dp serdes table so far. Without access
>>>>>>> to any documentation it's hard to tell whether everyone's just been
>>>>>>> cargo-culting all along or if there's actually something there at offset
>>>>>>> 0x2000.
>>>>>
>>>>> usb3_serdes is 0x1000, so dp_serdes equal to 0x1000 is definitely an typo.
>>>>>
>>>>> Judging from the downstream dtsi, the DP PHY starts at offset 0x2000. So
>>>>> dp_serdes is equal to 0x2000, dp_phy = 0x2a00, ln_tx1 = 0x2200, ln_tx2 =
>>>>> 0x2600.
>>>>
>>>> Can you share how you got to the 0x2000 offset? You can see my
>>>> (potentially wrong) reasoning for 0x1000 a few messages ago[0].
>>>>
>>>> The only 0x2000-something I could find now while looking at it again is
>>>> "#define USB3_DP_PHY_DP_DP_PHY_PD_CTL 0x2a18" which becomes
>>>> USB3_DP_DP_PHY_PD_CTL in the driver but this is seemingly not used at
>>>> all in my msm-4.19 tree.
>>>
>>> Quite simple: see [1]. DP_PLL is at +0x2000
>>>
>>> [1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-sde-pll.dtsi#27
>>
>> I still disagree from what I see.
>>
>> E.g. this part of the dp_serdes init table in mainline:
>>
>> static const struct qmp_phy_init_tbl qmp_v3_dp_serdes_tbl_rbr[] = {
>> 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_HSCLK_SEL, 0x0c),
>>
>> With this one:
>> #define QSERDES_V3_COM_HSCLK_SEL                     0x13c
>>
>> To write this config qmp->dp_serdes gets used which is set at:
>> 	qmp->dp_serdes = base + offs->dp_serdes;
>>
>> So if offs->dp_serdes is 0x2000, this write will go to 0x213c.
>>
>> If we go back to msm-4.19 downstream the equivalent define is
>> #define USB3_DP_QSERDES_COM_HSCLK_SEL				0x113c

There are two SERDES regions. One used by USB part of the PHY (at 
0x1000) and another SERDES region used for DP (at 0x2000). As Johan 
described below, vendor kernel handles the DP regions in the DP driver. 
Possibly this caused a confusion on your side.

>>
>> So there we are at offset 0x1000. And this define is used in
>> qcom,qmp-phy-init-seq which I already went to in detail in a previous
>> email in this thread.
> 
>  From what I've heard, the PHY driver in the vendor kernel only deals
> with the USB part of the PHY, while some display driver accesses the DP
> part directly. So the fact that the Qualcomm USB PHY driver init
> sequences don't seem to use the DP regions (apart from that
> USB3_DP_PHY_DP_DP_PHY_PD_CTL register) is to be expected.

Correct.

> 
> IIRC the v3 layout was also used by the SoC for which DP support was
> first implemented. Presumably, the separate USB and DP regions do exist
> and you should include them also for SM6350 even if you can't test it
> currently.

Correct. sdm845 and sc7180 are v3 and they handle DP and USB3 regions 
separately inside a single Combo driver.

> We'll convert the older platforms over to use the new binding scheme
> soon and then we'd need this anyway. And if it turns out later that this
> was all bogus, at least we only need to fix the driver (and not worry
> about dts backward compatibility as we had to with the old style
> bindings).

As you mentioned this. Do you have plans to work on this conversion? If 
not, I'll probably take a look during next development window.
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
