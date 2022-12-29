Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11643C3DA7D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MM9WcwbqdyvWoUX0Jd/ExC9xmLgkI7DYDrH7P0y3kMw=; b=cS+SMWGJZi1qQy
	8H/yakaXN0UPFjpyWZtUKWxY5p3TBhm2/Gnz7moMxn6BVw8QGjEOYgw8xp0xG77XSdmQ6T4T6oLjZ
	ow7o182udJhaIKwqmuZQ6HWCILFyHc/CaXMFLGnspVNvYbCQUuwN8z8pIsaAbaFAux0zmw7/95QHm
	ARnzSnOPuud4ijIbm2sUeDhjh2p0x5yHnrSmVKY6Pw7KxujrIkfUAhS5/ubQfQ16FWo9odLm0ENQ5
	VZcANUf27r4ckOyqDyH2MwFXHsGGLPw8dBRsmZ3ffZyTb0iZUe2FCqwRUA04AK4YO2wPR7qxaXdR7
	0NTQwL93yETlizDCkqag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB05l-0024VT-Cv; Thu, 29 Dec 2022 21:05:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pB05i-0024Qv-OG
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 21:05:32 +0000
Received: by mail-ej1-x630.google.com with SMTP id tz12so47536482ejc.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 13:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kRNvQQbqnc8KpHoJTZ87k7EPwQ8SCvjzbGkb6QD2t84=;
        b=AtpuXY4pnZ/cz0rHmEe4NJ0VRgHooaz5lYW1clJ77Gyl3wlv3NASy2lWHNOPISj2z+
         WDrqh4h+g8dTh1z6ToLGHIa5cJoa1vRQSQDNEXT0kJxDe2fXAsSljWj8qf1JIYnlTOgY
         wyEBb0iT2cgDgv765MdZqONc3N9dGJQG9gu6Bp8TyByDdvbEbQn86XGYvtncC+xuSH6W
         VjRhnfDE7W/XV/tVI4WUWXSDhPXtGX/YaOdVJJVgVskefjWdaXfiHD3DHNhYC7cpssya
         gdjsZEu3BV8p7qS/e/an47bB6hPrja7v+ZvZ7rEhoPNMTOHXwzV5pZ/x88AUZtOGeLp/
         hviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRNvQQbqnc8KpHoJTZ87k7EPwQ8SCvjzbGkb6QD2t84=;
        b=SYxYBfpiB9ERakTqOO7R1QN/vv+qWYYlFs5m1aXy8xBk0jbDOB2z22Nw7t6MnlgWZm
         dx42CxiuOMsu7Q6wMYdGBItweUblWz2yhGA9pjH1w9QGNRp2HCjmRWMUdCY9tDp8b0nd
         gRvmgYP87uSomNMzfZt/IKBF59A39I8mbKCEK5uU7NnQppwHkjhDVR+LEtGjtGwRHyTN
         gmqzKnoK8V/asmPadlrLAHojTmqolzeX4SLA+TPFSpYSNBInLoiwOU5vmrO7Mr6QGN9O
         948Z14R0t+4ULd8hFwvcFBSbMN7nRQe3sEhHEPNMcaG3RpibZ+hICHeWMlpyAsbj1LhD
         4yQA==
X-Gm-Message-State: AFqh2krYef7pHt/KLhA0v6F889IpzyjttEPb6nyL5W5M16lG/LPS5gFD
	JHcm0ov6lCrRUCh1CrP2YkdgYw==
X-Google-Smtp-Source: AMrXdXsaE45OPfrv95sRhArvsNcedxszCSPth5aVOjsY5weGoCmGV3Nl27JhjKLR4xx64Mf9m6NppA==
X-Received: by 2002:a17:906:5786:b0:78d:f455:3105 with SMTP id k6-20020a170906578600b0078df4553105mr24292744ejq.45.1672347925471;
        Thu, 29 Dec 2022 13:05:25 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id gf26-20020a170906e21a00b007c0b9500129sm8905790ejb.68.2022.12.29.13.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 13:05:25 -0800 (PST)
Message-ID: <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
Date: Thu, 29 Dec 2022 21:05:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net> <Y64AfHcUw192Pyr6@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y64AfHcUw192Pyr6@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_130530_868345_8612103B 
X-CRM114-Status: GOOD (  19.88  )
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

On 29/12/2022 21:02, Stephan Gerhold wrote:
> On Thu, Dec 29, 2022 at 08:45:15PM +0100, Stephan Gerhold wrote:
>> On Thu, Dec 29, 2022 at 06:34:10PM +0000, Bryan O'Donoghue wrote:
>>> Downstream has a flag called qcom,dp-manual-pullup which informs the
>>> downstream driver if it should toggle ULPI_MISC_A_VBUSVLDEXTSEL and
>>> ULPI_MISC_A_VBUSVLDEXT.
>>>
>>> Downstream states:
>>>
>>> "qcom,dp-manual-pullup: If present, vbus is not routed to USB
>>>          controller/phy and controller driver therefore enables pull-up
>>>          explicitly before starting controller using usbcmd run/stop bit."
>>>
>>> Working with a system that has both an external Type-C port controller and
>>> an internal USB Hub results in a situation where VBUS is not connected to
>>> the SoC.
>>>
>>> In this case we still need to set the DP pullup.
>>>
>>> This patch enables and disables the DP pullup on PHY power_on and power_off
>>> respectively if the DT has declared the bool "qcom,enable-vbus-pullup"
>>> effectively replicating the downstream logic to the same effect.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> [...]
>>
>> An alternative that I've occasionally used for early bring-up is to
>> simply use a dummy extcon driver [1] that permanently reports active
>> VBUS. The end result is the same. While it's clearly a hack perhaps this
>> makes it a bit more clear that ideally you really should try to assign
>> an extcon device, to avoid keeping the USB controller and PHY on
>> permanently.
>>
> 
> BTW another nice trick that should work in all almost all cases is to
> use the state of the PMIC USB_IN pin as VBUS detection. All battery-
> powered devices I have seen route the USB VBUS to PM8916 USB_IN. And
> even many boards like DB410c seem to do that or at least permanently
> supply 5V there. In all these cases the &pm8916_usbin extcon will
> report a VBUS state that should make USB work.
> 
> Have you tried using that on your MSM8939 board with the Type-C setup?
> 
> &pm8916_usbin {
> 	status = "okay";
> };
> 
> &usb {
> 	status = "okay";
> 	usb-role-switch;
> 	extcon = <&pm8916_usbin>;
> };
> 
> &usb_hs_phy {
> 	extcon = <&pm8916_usbin>;
> };
> 
> Stephan

I checked USBIN before my last email reply.

Its possible its connected but its not there on the 8939 schematic I have.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
