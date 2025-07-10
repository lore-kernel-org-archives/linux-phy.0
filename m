Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D94DC83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOs+GTv+qAgogi4KRl3iY7jJl1yaa9oMRGhTRoxhBkY=; b=rz1X9DGQMOTcXL
	lcYwPR9lkTiCoF4c8VBwK2cQbFSePXd+PNWGetiQMuySStk5w2IfW0YWzlxDEMCdjfKlJgUWOThab
	kVlT2q9O9rdr+mNWXsnkDoueA/8eILB3D1iyovVc1hVxBBYyEw5CUpFXZ/4qNJix/88ag9CNcJT6n
	Sa5pWpSkQnLMSrAf29KjaORBQOSQktv2DgJMITnOj3e0+kismSRMjvIpQy9cREBhSgODeJssAQg4Q
	qesPSC44+v/RyQRpEPXAxHK+QQAz18rlxcH0mBODb6heEsqxkxFUy6ImiHAilGFeIDuzRduYVnoEe
	QEO9l2CkaU7AUUAge1zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZrbB-0000000BzkI-0pO3;
	Thu, 10 Jul 2025 13:46:05 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqLF-0000000BlBt-0Lcw
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 12:25:34 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-ae3b336e936so168439866b.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 05:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752150331; x=1752755131; darn=lists.infradead.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xwbim7kMT0dZOrtg1YvEDqv9pTaWeBwXvEocCP4T4Us=;
        b=c08vPEy2a2Hh4yt85Q4dwzC+6kO7PZdiDuobDWDpSi14aSEuMTsoXpmPpIaYabmLRY
         Czy89UXxkijzeH8tM/OeHt68x0/6x3WvIoylJG1j+Su/0LkrCPikXfRcwkweOY99bSQZ
         Na5bBYWTLQHIrQROE3/59aciIa+oZqy++r/w8kjriPC6fHBmA5QiObZbQh+LzbjGB6kt
         Y1EtDW+tQpynTzrE8QMq31G0T0EpuRLGSlsz9xuagZj2eDxgzelzd79CZuV+mnGJUUQK
         uKQffCI1bxJS1GezjHdEOYb1oe8OG23+GPx/+gQCPGc2VfECqtB8J2xHq9yIPeeQpIGB
         5sXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752150331; x=1752755131;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xwbim7kMT0dZOrtg1YvEDqv9pTaWeBwXvEocCP4T4Us=;
        b=S5kiGfzDa3rkl149JBtZIDUWebl2F3X9K0Xso9DaKDgvwMiT2dFeqPPgQIeuQJrJuu
         BYefxQQnn6exMFWQjLpbbcYX9YzvSNxu6ujQon9yzPDlSpRcM3ut/y/UQwTsYau4md5F
         scqwB1Dh0SFTawh6asx+5cib5dBSCeGc6swJGWpNdOBJBsp9OWLj0IoCIc23ks7QVfnK
         edRbpxSXtn+bVGGgbaEe5ED5X70w2N++3QlNmzflPsGAoekIm981YjaU2oZKRTEpKzTg
         kCghUh9u8nv5oONYboqkBFl7i0TE4NxNiE6iMc0+FCaq53gG53h7GIo9tNfZCpMwfx4h
         ofNg==
X-Forwarded-Encrypted: i=1; AJvYcCW7Hfq7jVOJgybOycPPQsc+1WRu4/e9EB5j8xwhdzL/CPouHtBKMn6xvJtGdUQnARN16g0ES5ngrrU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxDPZc/0HvPWHmEBzxQ6O3J7cLhfabkLbPkOZNFeUBwF8WI4j5
	bItGTN8jiIHC8qr0ptoMNqybJDFcxOjzebgU1fqYOXPzV+2OBc3ybYO9t4nnF3Dvtk4=
X-Gm-Gg: ASbGncvp26MJv7ZgowuCIjmY7wxIwr8QJpxQMZAISzNPUQplXOBgmKSwy9Q4rUFpV6a
	dcsLkeJQ+scXrYaoFRZPm6BIUlz3d41Bn66uci3kpifnyqxPDl1irL6OzLD2ODxaZT5NoTjh9N7
	uzlo57UhXPK/ya+MrBsel3+yd+g3hpKPeekMdMWAdvRXgmMObpKKp1RfbDmrYWrY8waP++jars1
	QHE3uPXBYQa6hzXz1JLt7ZMh03LXYAQchZ9bgZkKUoGW3lq++g9BtF64Tigu03U6Pe4n1FdScF4
	Af7j44D+HQY2N2uA9Z2CFLJXEOz8TNLPR8JzuRNcTur/S2ey2tMK6mE9FuUPVCBu7D201mgEnLl
	13A8P+NT31RBiU43uX6d+0oHWjDCFwus=
X-Google-Smtp-Source: AGHT+IHgPoXaBYMtzbuGf92TYy9uG1SRxa3TcJ8k4yFuiO+mhGC+1G7Z5mU03G7kTXV1yim8ZigM1Q==
X-Received: by 2002:a17:907:ea6:b0:ae4:85d:76fc with SMTP id a640c23a62f3a-ae6e70372a6mr247071066b.30.1752150330835;
        Thu, 10 Jul 2025 05:25:30 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e826461esm122729266b.100.2025.07.10.05.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:25:30 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 10 Jul 2025 14:25:29 +0200
Message-Id: <DB8DGDEN23D2.1GFB8XI0P3YLR@fairphone.com>
Subject: Re: [PATCH v2 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra
 register write for Milos
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
 <7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com>
In-Reply-To: <7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_052533_131459_ABB187C2 
X-CRM114-Status: GOOD (  11.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu Jul 10, 2025 at 2:10 PM CEST, Konrad Dybcio wrote:
> On 7/9/25 11:18 AM, Luca Weiss wrote:
>> As per the downstream devicetree for Milos, add a register write for
>> QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".
>> 
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>> The downstream driver supports an arbitrary extra init sequence via
>> qcom,param-override-seq.
>> 
>> volcano-usb.dtsi has the following which is implemented in this patch:
>> 
>>     /* eUSB2 HPG version 1.0.2 update */
>>     qcom,param-override-seq =
>>             <0x00 0x58>;
>> ---
>>  drivers/phy/phy-snps-eusb2.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>> 
>> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
>> index e232b8b4d29100b8fee9e913e2124788af09f2aa..87fc086424ba4d9fb3ce870aa7f7971a51d4a567 100644
>> --- a/drivers/phy/phy-snps-eusb2.c
>> +++ b/drivers/phy/phy-snps-eusb2.c
>> @@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>>  	/* set default parameters */
>>  	qcom_eusb2_default_parameters(phy);
>>  
>> +	if (of_device_is_compatible(p->dev.of_node, "qcom,milos-snps-eusb2-phy")) {
>> +		/* eUSB2 HPG version 1.0.2 update */
>> +		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>> +		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>
> Said HPG asks to clear bits [7:1] on all targets

Okay, so make this unconditional and only update those bits instead of
writing the full register?

Keep the write at this location, or move the code somewhere else in the
function?

Regards
Luca

>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
