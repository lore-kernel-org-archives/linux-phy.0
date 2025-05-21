Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD906C2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 11:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMahHZLtUkZaz4kvzINnwG/5e3F3XvU3Un2/BHhlHlg=; b=vrZUkYx5ZFBKON
	4wof/HrcM17hZI9kdVeSTbZ7bWYKvr/iIcFP6EU4MJwVfd9n4D70nqDmAfLxiD8LS6IVMt3S89MgI
	cmRvkgLcyd2vbEWsKemDxTSEGhcs6rbIyDfPilR8291QmSG4cSkwci8AhDXPgZUBc2wO+lKenAz7i
	KxTzjN2TBigGT06myaBNhA6AtFp4jDIv+a0ATp24eg/i3/X/yvtsBWXC/tt/aREhvML77GWK43D+x
	tayg82ZJcCtpoJ9XuqE5RWs7/2ZNUXvoMbEd7VmUHDVA8dfyWlW9AZV/0kT9XBr8hFbCxJFaBbzFC
	Q2OSdry6cuek9/zdbavQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhbk-0000000Fctr-1Ock;
	Wed, 21 May 2025 11:27:36 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhbf-0000000Fcss-3wMH
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 11:27:34 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250521112726epoutp03ff795b7d9c639f1e3df2fe40388a9cca~Bh0Gztxgx2731827318epoutp03d
	for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 11:27:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250521112726epoutp03ff795b7d9c639f1e3df2fe40388a9cca~Bh0Gztxgx2731827318epoutp03d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747826846;
	bh=vl3yajlFYJh19ijyGDpwJVcyHBKNanD49IYs8BuF3mE=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=l9PZQdT5FM400JC8c1gUdoezGUib72npsaCt+GnoAgm4Sopw/ZL0rAWeQp5culZ5S
	 2iniP4tVUOrpd8bQvWKmdckShWro4dOJoQ18DfIRQUklh1YHiXU24gN6B1w7R3/efv
	 mh6wdfXLkZ0hnLaRYkfkNn2KDReFGgeCaHllW01o=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250521112725epcas5p4aa1fbca701d58e50cf676d50e8611e7d~Bh0FwC1IV0397603976epcas5p4L;
	Wed, 21 May 2025 11:27:25 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.174]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4b2Tfg5BcKz6B9m7; Wed, 21 May
	2025 11:27:23 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250521110904epcas5p2ff2e2297e977703bf1ab672cedcb862c~BhkEH5SSR2735727357epcas5p2S;
	Wed, 21 May 2025 11:09:04 +0000 (GMT)
Received: from epsmgmc1p1new.samsung.com (unknown [182.195.42.40]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250521110904epsmtrp2f1fd152e9f172e0305985651e5538eae~BhkEG8BO11051310513epsmtrp29;
	Wed, 21 May 2025 11:09:04 +0000 (GMT)
X-AuditID: b6c32a28-46cef70000001e8a-2f-682db44f77f5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmc1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	28.19.07818.F44BD286; Wed, 21 May 2025 20:09:04 +0900 (KST)
Received: from INBRO001840 (unknown [107.122.3.105]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250521110901epsmtip2898271c09d575a746038f8201ac54627~BhkBKexXM2298622986epsmtip2N;
	Wed, 21 May 2025 11:09:00 +0000 (GMT)
From: "Pritam Manohar Sutar" <pritam.sutar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<andre.draszik@linaro.org>, <peter.griffin@linaro.org>,
	<kauschluss@disroot.org>, <m.szyprowski@samsung.com>,
	<s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <a584146d-df86-4e40-8a0f-c3b7558fd066@kernel.org>
Subject: RE: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add
 dt-schema for ExynosAutov920
Date: Wed, 21 May 2025 16:38:59 +0530
Message-ID: <000101dbca40$c32aee90$4980cbb0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIiRnTfgkV106HBI/lpdza94uXQvgBQmjeRAP0KzpUC9NC6EwLLG322Am4GW9KzBBFtYA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Re0hTcRTH+917d3ddjG6b6E8trdFLs9kg8FeY2YMYUVCQUdHKpdcpOV2b
	W09Qe2tRVlruVpo9pi6zmsPWG7ZZWuYobZboEHNYqzTTjPXQmKPwv+853/P9nAOHwgWviVAq
	PTObUWfKM0Qkj6iziSLmrTXPS5t/0IOjrtI6Epk9tQSqftSMIZfFwEVl9mYOcr4t56LfIw4S
	1R8exdFH1kUih+M2F5neOzmo5f5FEhUahwlU4niMoZv2Ti5yfCjgoNslIwQafWjhoiFvF45s
	n49ykL1iAEP3OhrwhCBpY00tJjUZ80lph/MhKa29liM9aTYC6aApfC25mReXwmSk6xh1THwS
	L+1pnlZlFe7+/icPzwXPJxWAAArSC2CvwQsKAI8S0A8AfH+vkOs3psDuc3c4fi2EVSO9XP9Q
	L4D9+T+IAkBRJB0LL9XM9vUDaQcGu0u6cV+B0zYMfitiCX+iDYN6kwvzoQLoeNjAesdWCOkU
	2PKtAvORCHomtHpW+dp8eiHML/tK+vVk2KjvIXwap+dC9zv3f20o/4T7r5sGvW7D2KWB9AZY
	d8jL8c8Ew3rvCbwQCNlxKHYcih2HYsdFLgPCCEIYlUapUCZLVJJMZpdYI1dqtJkKcXKW0gTG
	3h41xwL6hg/EWAFGASuAFC4K5Msqo9ME/BT5nr2MOmubWpvBaKwgjCJEwfwqyUaFgFbIs5kd
	DKNi1P9cjAoIzcXOJcv6Na5j2zw/J4gtAr1sDQ2DhpjVWlx3bOGTvW26DRe+SkeA7E2nvnpJ
	1fQDETW/7oIOm51VylqCirc09enbW9kyuLjCuWV5+OiwKn297MzK4ESiK/LorGUk5wltmZRY
	33Pw+W94Xh/yQnG6NWndAgneVGT/bjxx64jcsOv6zrP840LFxITU9EU3rDPk7erOyOimvP0R
	ceW2XHdSlwHFl4rttCq0/2rxxMfRDWHiL84Vup7q2LCt8CI3p+VwUCUeNTc8I2Tf9cnItXF7
	75VXA42e00WFwamDKTv6XkamfkhK3VSsM283q+8+PeXurPxpnzY89UcCED2LXcrTighNmlwS
	has18r+DrKQ8ZQMAAA==
X-CMS-MailID: 20250521110904epcas5p2ff2e2297e977703bf1ab672cedcb862c
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
	<CGME20250516101800epcas5p49fdae57cdf1fbec0427720ee38b0f925@epcas5p4.samsung.com>
	<20250516102650.2144487-2-pritam.sutar@samsung.com>
	<0615877e-247a-419b-b4d6-de377cb40914@kernel.org>
	<000001dbca1c$636ca080$2a45e180$@samsung.com>
	<a584146d-df86-4e40-8a0f-c3b7558fd066@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_042733_398120_43743956 
X-CRM114-Status: GOOD (  15.97  )
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

Hi Krzysztof, 

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 21 May 2025 02:15 PM
> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
> peter.griffin@linaro.org; kauschluss@disroot.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
> faraz.ata@samsung.com; muhammed.ali@samsung.com;
> selvarasu.g@samsung.com
> Subject: Re: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add dt-
> schema for ExynosAutov920
> 
> On 21/05/2025 08:48, Pritam Manohar Sutar wrote:
> >>> diff --git
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> index fdddddc7d611..c50f4218ded9 100644
> >>> ---
> >>> a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> >>> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yam
> >>> +++ l
> >>> @@ -32,6 +32,7 @@ properties:
> >>>        - samsung,exynos7-usbdrd-phy
> >>>        - samsung,exynos7870-usbdrd-phy
> >>>        - samsung,exynos850-usbdrd-phy
> >>> +      - samsung,exynosautov920-usb31drd-phy
> >>>
> >>>    clocks:
> >>>      minItems: 2
> >>> @@ -204,6 +205,32 @@ allOf:
> >>>          reg-names:
> >>>            maxItems: 1
> >>>
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            const: samsung,exynosautov920-usb31drd-phy
> >>> +    then:
> >>> +      $ref: /schemas/usb/usb-switch.yaml#
> >>> +
> >>> +      properties:
> >>> +        clocks:
> >>> +          items:
> >>
> >> Why there is no main PHY clock?
> >
> > external crystal clk (ext_xtal) is used as main phy clk.
> 
> So this is the main phy clock? This describes the clock input, not what you have
> on your board. If you change external crystal to internal clock in one design, you
> change the binding? No, this makes no sense.
> 
> 

Yes, this is the main phy clock. Will revisit the binding and try reusing existing one.

> 
> Best regards,
> Krzysztof

Thank you,
Pritam


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
