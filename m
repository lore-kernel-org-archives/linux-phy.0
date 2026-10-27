Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77943606A324
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 06:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Wo64TxuT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=mI6rt0Wz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=gLlVShVD94+PXQuFipOXnzgaC0sQHc4X0fhstucnHwA=; b=Wo64TxuT2nyaRmYv/x0bE3BBYV
	LDHCmlMeQesPAv6Fyag1wXueJ6k5IVqBBBO3k9FYIUkeeG+vV0+G5otX0T4S190GaBsIfTg1o9nrI
	kBs47pRmtTU8RkepQ+YPs9qSnUGUszJumgOCIdFMu32JPW7InNA+zRxSgdg+jcBs9r7Naca+i8oR/
	XWNhNaKGRfAfez9KRWE+3EmvHv+hMtJxs/w0nKyyqPS115yASvlM2TIYgUwv0zp3Cl3dc4P7W28JX
	LUyvMdCv9bXzoxm9Vwo403tFDc2Nk/j5BZcilA1TB9sc1aYySab57wzOt5pka9c6Py0WPK3ALR43s
	0dBmDJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLarN-00000003rJH-08UP;
	Tue, 27 Oct 2026 06:40:37 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLarL-00000003rI3-0feZ
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 06:40:36 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-3ab2cb8d577so2662061a91.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 23:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793083234; x=1793688034; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=FMlVixG0r7ucjTAqdIszWewlNzO+T0JDcfYGipLMztI=;
        b=mI6rt0WzmLvy6jvDag4OI4ImYPzAEtxmLXsnG8+vB9lmjv/0EAGYAAbXyIq1ojtLQp
         kSQPI7z9eDOLt9lJiA2YO9AyOR3k7WMfPn0DH1EfJdwcazghs6JfYsqwtNLN34n0aX3j
         S3Sxc+3FkqDROJXZy+NPzN7d062UEnihVvuaKxINis8qM2IgWhcc5S45qMViYnrxMpX4
         QU2r8wiUIevxkxA5de2VH8CYxR4fK57Tr3j1UofvGnc5pRahLTjHL2+TgK6+a+CVn9/C
         UIRbHoegbKEossW/4MuDf+qCnipklz9CGFLe8n9t77KhfZOYWHKZGvOP5FVJL2CDxVj7
         OE+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793083234; x=1793688034;
        h=content-transfer-encoding:content-type:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FMlVixG0r7ucjTAqdIszWewlNzO+T0JDcfYGipLMztI=;
        b=paxxr2pSazGj2Tdpo9nRmooDUzJt83i+pUneDOidziQ6UtlJOoDug6IPD0PsaKLHPe
         yZfajKyACslnuii6VVqb+i8xB90P91klAvrsi/1G1iJef8jpffkDLQQUg5Haut7Lc9ng
         D0iq8C96R/nKx/FCBUCZJvhKHg6P1k/Rc4YvzIFeimyIy8nJB4Awj3M2KPk3X6XOGsUM
         KLJtFhuO2epHJJQbe3IMtXd2RRmdnQNE5UhUVmWYUVV4tlH7OS6UaqyGuQAxP9fvgsTS
         9zIRH5vTa9wvJJoP2nFcrIz7iGoglLrzv1MvvQ19ACyXQcwpOaDw/qEU6bEp73CVR62N
         jyUA==
X-Forwarded-Encrypted: i=1; AKwUvBzUptNEfNos7RuQAoXFVemBZ/Jn2q/vBWIdz5pWkQoMpEvn5KsjxsAzJTv5imS6scCgivkuHtOurz8=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ+4t8P97cNaEIyV/FrFnH5siCYc48FKzj3Hfxq9txkjs0EZ1MN
	4s1cYcRLdf0Ju6tHsCvrqD6GHmVinIJzgDr90MWfZjV7wRcSvbDLmKs=
X-Gm-Gg: AYBFou3UCdoKqso/uJJRZxUqoE1dG4YVi70hpLvHJf92RaHAu/jfpRCHWhxclmv9yls
	S5QbDIkTnIl6/03sztBsM1vU3zhG4uXVZnQX2C86AoTqAzGnwZAWDvvdYKCUpjnbWvSN7/T6gRq
	PVyyoxTe9nQGdHYzO5doeSU4TLZcz6oc/OVf8f/Hv6A+8UMtmF8IETXAIgB1GmihLJ1C7DfMRsw
	rR72ibpoohW3vwoFr56pMwLU4D/6pdBUqAa+9hWdrqPqICTzCNr8UnVQbu3rfVS7qE5j2XtM/OI
	TH0J95naVql7MB2tQoW+cEsiumHo3wXrRjERxEXKRpSSQsHVW/+hOofoPMZNGqUFuDiw1+INFzE
	U4dZO2xDkgPgfhbebCG+u+P7Tuqdi4Rh86Wgji7O3icV1jSIBoUrnDdJqo91T5hcwN3HAn1qL3d
	Pl3Aw7euQFk8YvaNYaTzhj4CrML4HUNto5wvxof/oOjg39dC1nWAgiUbL+TYMXhKj2rG60zieGD
	FTc627z1HUn7xD596o1kwjF8WP8Eydfw5YH3qP4IcxI+VDN/Q8HjNCgcwOs3hggJd554gq3yrJk
	i/hqtntnHBBvsg==
X-Received: by 2002:a17:90b:164e:b0:3ac:4291:f569 with SMTP id 98e67ed59e1d1-3ade9b2ed66mr7926692a91.8.1793083233783;
        Mon, 26 Oct 2026 23:40:33 -0700 (PDT)
Received: from [10.1.1.198] ([71.212.222.246])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae4066cf2dsm2200569a91.16.2026.10.26.23.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 23:40:33 -0700 (PDT)
Message-ID: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
Date: Mon, 26 Oct 2026 23:40:32 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
 Nabige Aala <nabige.aala@oss.qualcomm.com>,
 Mahadevan P <mahadevan.p@oss.qualcomm.com>, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
From: Burke Cates <burke.cates@gmail.com>
Subject: phy: qcom: qmp-combo: Glymur USB Gen2 fails on one port (chip rev
 2.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_234035_211031_63AC7843 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-2.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

Could someone at Qualcomm check the Glymur USB43DP USB tables
(glymur_usb43dp_*, introduced by 5b289913959b "phy: qualcomm:
qmp-combo: Update QMP PHY with Glymur settings") against the
supported production settings for chip revision 2.0 and later, and
post updated tables if needed? Is revision-specific or per-port
tuning expected?

In short: on a retail ASUS Zenbook A16, USB Gen2 fails to enumerate
on one of its two Type-C ports with the mainline tables, while
Windows runs Gen2 on that port, and local changes to the Gen2
receiver/lane and common PLL settings make it enumerate. I'd be happy
to test proposed settings on both ports and report enumeration, DP
and suspend/resume results. Details follow.

The machine is a retail ASUS Zenbook A16 (UX3607OA, Snapdragon X2
Elite Extreme, SoC ID 662, revision 2.0, BIOS UX3607OA.312):

  C1 (left, rear/display-adjacent): Gen1 and Gen2 enumerate
  C2 (left, front/user-adjacent):   Gen1 works; Gen2 fails

The tested Gen2 device is a Realtek RTL8159 10G NIC. Two different
C-C cables reproduce the C2 problem. The same adapter enumerates at
Gen2 on C1 and on the Type-A port. Linux applies the same USB tables
to both Type-C combo PHYs.

On C2 the adapter either enumerates at Gen2 and resets/disconnects,
or never enumerates, looping on -71 ("Device not responding to setup
address"). For context, this October 22 excerpt is from the earlier
flapping case, before UCSI was started in the initrd:

  [  307.056050] r8152-cfgselector 6-1: reset SuperSpeed Plus Gen 2x1 USB device number 3 using xhci-hcd
  [  307.136539] r8152-cfgselector 6-1: can't restore configuration #1 (error=-71)
  [  307.136705] r8152 6-1:1.0 enu1: Get ether addr fail
  [  307.651093] r8152-cfgselector 6-1: USB disconnect, device number 3

The failure also reproduced with UCSI running in the initrd. In an
October 24 A/B, keeping the cable and orientation the same, the
unchanged USB tables failed to enumerate on C2 with the -71 setup
address loop. Local changes in the Gen2 receiver/lane and common PLL
settings made it enumerate at 10000M, with no -71 in that capture.
Windows programs different values on this hardware. The A/B suggests
a settings issue but does not establish which programming is correct
for production hardware.

With those local changes, C2 enumerated at Gen2 with both cables,
in both orientations and after s2idle. C1 still enumerated at Gen2;
DP still trained four lanes at HBR on both Type-C ports. I haven't
isolated which part of the settings change is necessary.

This is an enumeration result, not a throughput or complete NIC fix.
On the changed kernel the RTL8159 still fails to get Ethernet carrier
on both C1 and C2, and cfgselector resets recur. That is being tracked
separately; I have no Linux iperf result with the PHY changes.

Under Windows the same NIC negotiates Gen2 on C2 (USBView: "Device
Bus Speed: SuperSpeedPlus") and carries about 5 Gbit/s each way in
iperf3 (about 6.5 Gbit/s in total bidirectionally), so the port and
cable are fine at Gen2 there.

These tests used v7.3-rc5 with out-of-tree Glymur platform/board
patches, including DP PHY support. They were not on an unmodified
mainline kernel.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
