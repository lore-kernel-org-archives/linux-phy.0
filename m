Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADE4606A681
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:01:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wFBIJ6V4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=nUBHRIjn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=iIOnRa6Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=24Uj/lPlLmeFAEHHZzZPwDMsZ91TkaaX+ivTYw29hNo=; b=wFBIJ6V4KniiZs9WpHhuPbQbVp
	y2NTJ9dLmjzjO0wzhDiQ8wo8jL2ebLP37wUBv03/blM42+R7Da7E/Mhgh99tARKIr/shL9paMm+P3
	AJQsDlyp//vbJ+RdAetqOfcACVhrJXl6+SfoZtnbN/MzGlrM0ZBGWOgtG/F8+5zv1pKy3gH5npE8u
	68oZ7z8neisJN862y1bPtXY4Qeyo27iNY4AYsVQ7e8VkcKFY1VD4VUSeTaEi/cT7tlVir/SJJ00rH
	GzlLgw8XsQD8YdGrMn7/uVkNMsV7VVFTBGzH2chT0L4Wd5Whco98+f5/Ep5oZR8GAkuoXWOdPl8Z9
	TWB1qkxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwi6-00000007gyW-1HAh;
	Tue, 24 Nov 2026 20:01:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwi3-00000007gx6-31XT
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:01:49 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIY7eQ1651298
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=1gByKWms90rx+ZYM2PzY3C
	prddTIzxOBqUOzZScJ+EU=; b=nUBHRIjn1pCmJwzztA1YcOY736l7TtuRsJ6kFb
	jrw2ctcgfWvZaGABsWaQT1OW5YcaZvIfaiDwWc2dItZAOwcUv8gwNzwNtM571xit
	Daj2q3OtyI+HafktVNFRLubsVdliReBEGj/E4ce0dz+Mrej8lBDfD8FhJTV7Y9oI
	JbkPSXZkjhH2n+0wRIQHO/fVx3ZCq0hJZeFWWECOeg6RIuvGymSp974It1srwNoR
	fTSAxLwrSfJwQsXyN4vuh4vYoXTTXhsebM+ASamBS8v04f7ooCf3arXUZ8545NWr
	ef2jmm91CyrkNS3UsqDjb4mCqlWBW3e3sZC3NGRaeyp3uaiA==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j54rpks29-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:46 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5eab0ea26afso194362e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550506; x=1796155306; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=1gByKWms90rx+ZYM2PzY3CprddTIzxOBqUOzZScJ+EU=;
        b=iIOnRa6QlErWGg5VCF8gFv6V+YluE5KfNpXF8MCD4emhFQvhzi6lFI2F/bN6y6cfOT
         SqbwK5yMMv6MmzQckV/zVcCp8s/o48fKxjc0k3ywouzqj7OahfRh/NIpOxRVeAyCWm3Q
         YZ8UBzP0tO3DlJsyx2jDYbav/BXHm3B64k9bSk9Sj64O7mhsff4xCh7dojAmUbj1W9u+
         OPdP6130lgVa3DUM5T+vaGwOOVfeX+6T+hb9wCBxGlO5nKavb/YnjgDy/S97DNk+Y/Td
         r3jNKDiQQHvuAmZtHt/3xKAm0s16pB7AUrTN8b1WdETPYipCPxs9oMZ6nuYTfIAn+Jue
         UF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550506; x=1796155306;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=1gByKWms90rx+ZYM2PzY3CprddTIzxOBqUOzZScJ+EU=;
        b=WWMF3bIPn+6cTZLjT0YJpFqRZn+I5ghsv0DCNvaDXPsAsd66N/4YSLXc3mk2ReuK28
         xEbLPgsumZ6VEf2LsIr52QGgktZSgNThOecx1I/vJDozCFoZileySgLnLCjAuZnuo5bE
         DV9zwOLm4dTCJgTkGzNIDZvp9c3esJnT1InzUOXWM1LhAFXTolkvsvZP4NhemIqvM0D2
         SVm1vrWEZ8Fio1cs+Jyd9TczHTZapW7mUyQ9Bm4ZEVFET+vkYyg9CSWqNrvJCs9zSUYs
         8hnDV3ayfiNj/HyRAw1pNiBOs9UwqU1CKzA/2vpLUkfygRpTqu0135QKtfUZKNKD9Qgw
         SE9A==
X-Forwarded-Encrypted: i=1; AL+hErFhin+tvM2bhA418B0il4Ixm8JbRPDZCGC0499BM85WRkHIwtAP4nCcA2a4GZYo63hN2T/MEOA2Yr4=@lists.infradead.org
X-Gm-Message-State: APuU4Z+5drdDVNN37UQpnFeyG7a4gnblT3V8Pftbvg6kVmmpnkbenw8k
	10mIqY4dPQyNnyWA0itxbfbsCwmpWf8hVkJTGnQtC7z1p7OLDIfMW5/MgH28HNWCBLBiqtm+aoY
	KtWzcH/g1jzdESbAptpEITyqa8iSQtJFYnfDpJLJwGaTo75V2uucyYiJ5nD+Blz/+u7Vz
X-Gm-Gg: AZFdTZe+Z3k9Ulm3p8WPOj60ZPbtKg+7NLtOAMALCnDBrYHPGoaI7Hufe0cdwIktVxO
	X1Xx4X1+BZEcce49TBceFEaSnIXHLK6CYgbYSruRXS5Y+cV86xOvz+qkDAzr8FU4bYbeus4IBGp
	NbjNUtiHNPGBI1fSNnE6zBobRxX3RMpgSc73byr7PjWprZcOJjNnWPzpWKn+Ezq8E7npqZOhw6R
	4HMMID07EAvEIrkSzd0rfSC36HA4shfim4RVDy/2UH+6RF6LJeiXYPoLJ6rmbzYpYj0Ux9YQu+p
	qexSBNCDbZKQFa7SCe2QE1I+YGiSjGARFoEOHh4FuS8XJjlkWN7uEzofyhfY0+bhPNitXmtMKgh
	oWIVymThIRgnezxgXbAsaw7j4G5/dJQWHOBtF3yC43/MbdnFI5lJiDA9lnlzx+c8chvZXhoKrT2
	0AORGtDws=
X-Received: by 2002:a05:6122:680f:20b0:5ec:b145:889a with SMTP id 71dfb90a1353d-5ee8aebba7amr10992452e0c.3.1795550503028;
        Tue, 24 Nov 2026 12:01:43 -0800 (PST)
X-Received: by 2002:a05:6122:680f:20b0:5ec:b145:889a with SMTP id 71dfb90a1353d-5ee8aebba7amr10991920e0c.3.1795550500218;
        Tue, 24 Nov 2026 12:01:40 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:39 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [RFC DNM PATCH 00/15] Qualcomm USB4 host router
Date: Tue, 24 Nov 2026 21:01:29 +0100
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABrtBWsC/yXMQQqDMBBA0avIrDuQjBJor1K6aOKknYIxZFIRx
 Ls31uX7i7+BchFWuHUbFF5EZU4N9tJBeD/Ti1HGZiBDzloasM5ZAiZeK57NOow64bRk9NfeGdP
 7kSJBO+TCUdb//f44rV//4VCPJez7D6+h/WN/AAAA
X-Change-ID: 20261124-topic-next-20261116-fsm-mvp-b936003bd2f2
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=7195;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=A+ZxrCHc+xf8sMBO+IHGTxF3X/zbPOdINNbdHlkOLNA=;
 b=5cbCykZEDXFsQZZ+XcavorGkQhh0sBNtwv2IC4avWJ42tQ1OxbK8wzU1ieoZNBVY+h/jWegS/
 EJ0dmLm80EQD/WK73n9pQNYozrvN9nj5js9NDwJ3v+pJ66kPr1hIS5F
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX1Je5dpw6/mGr
 E+0DJiw3oCTN/bqHFAyF0mE+0ed+UA8Sj6QIhNoFRN201miL9jvA44rghzvHRYjH4Y/MM8NqD18
 0DFuAcWKYcuYTgXmybYixs7HrVFooiAhEAUVfVlXmwoqcoGYAAqAFn6QDPWsA1M0iNazvzTe+4H
 Ab39uUMVpSEjolIuIVUCYVAOqdlVs9WI4FuYngBd9ohjPMGreJUJHRdsBNIwaxjaCXR0s9Evmqk
 VoEdV5kGS16dxXNPxNVX9m/gP7JuHXqe/cHkAKqtoe1tysLqkNAI6UaxEMVZ2Wze3hsRswNJcjz
 WEdLhwmOTVrJinYW+FtCNrQ//byFy2lWdnh3QUG8EIB8DIlk1TmUwoSDLjXAI6ydQMlbQmQzqUn
 fNPFDTdzLuAjo/ePNbT6E5KeuUm9JfukcvfdjBZyq+P2/Fz8WdwF9ge5sCAvJ3uVTrq4wuOd5Bq
 jZqDsvkNHj5GAgu/zAA==
X-Proofpoint-GUID: mxk8vwYIZd-Li_ZM357HeAYR5EFuaXiS
X-Authority-Analysis: v=2.4 cv=MvbHeGae c=1 sm=1 tr=0 ts=6b05ed2a cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=NEAV23lmAAAA:8 a=Q-nnJTdTW8WZejlXziAA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX3MRZZ/qYNACh
 EWfqjlcIOKnhFyY3s1dNxFbn+K8v2dS1AvOI5cOiWMNx89yH2LXaPSrP3NxfrSAiXW1/iwJjXdF
 xQ1lz63TevfS79tyFGBz9QGi58RpKTE=
X-Proofpoint-ORIG-GUID: mxk8vwYIZd-Li_ZM357HeAYR5EFuaXiS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120147_886030_7F5901F1 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This is an early RFC, mostly looking for acks/naks regarding the
bespoke power state machine and Type-C handling in qcom.c. This version
of the driver can power up the hardware, have it suspend/resume, but
notably not drive any tunnels (as that depends on dozens of patches to
other subsystems, many with shaky dependencies on the still-forming
usb4 dt-bindings [1]). Absolutely not intended for merging (unless you
want to take some of the intermediate tbt patches, Mika).
Speaking of dt-bindings, this posting comes with none, as it makes no
sense to waste maintainer time until that GitHub discussion is settled.

Said state machine is an attempt to tame the delicate clock setup,
which if we don't get perfectly right results in the machine hard-
crashing. More on that in the big comment at the top of the driver.

The Qualcomm USB4 host router is an in-house design, implementing a
standard NHI front-end with a lot of vendor glue. Because the USB, PCIe
and DP blocks live outside the subsystem (and are wholly disjoint), a
lot of elbow grease it required to have it all behave (similarly to the
Apple implementation, but with more manual clock control and firmware
handshakes). Native protocol controllers can only resume after the
router has re-enabled the links (which collides with today's notion of
nhi_resume re-enabling the tunnels), so that requires some
consideration (again, not included in this posting).

USB3 tunneling requires:
 * a bit in TCSR (tldr a syscon) to be toggled and the path to be
   enabled
 * a register set in DWC3 to work around an issue with the USB3 adapter
This is a fairly low-hanging fruit, but still depends on the bindings
to get the device link changes in within the USB subsystem.

PCIe tunneling requires:
 * a reset in the USB4 address space to be asserted
 * a number of additional settings on the RC side
 * standard PCIe hotplug otherwise works as expected
The link itself works without much effort. How we set up devlinks and
whether we can go forward with or dispose of the router's power state
machine will shape the suspend/resume handling there though.

DP tunneling requires:
 * handling a secondary mailbox within the USB4 subsystem (not
   included)
 * setting up the display crossbar/mux correctly (any of each routers'
   DP adapters can be muxed to any of the available DPTXes)
 * settings a couple registers in the DPTX
 * driving a secondary AUX bus from within USB4SS (the AUX controller
   in the DPTX is blissfully unaware about the existence of USB4, so
   the OS has to ping-pong between them at runtime..)
 * HPD management
Because of the muxing and runtime AUX switching, this requires
sizeable DRM changes, including Luca Ceresoli's work on bridge hotplug.

Additionally, the hardware is constructed such that the protocol
adapters need some of the native controllers' clocks and power domains
to be online, hence the odd DT references.

The uC doesn't implement a CM, it instead does some housekeeping
functions, but because it doesn't have a view directly into the SoC's
register space, it still requires a lot of OS coordination. It does
however take care of link establishment and some of the TBT-layer
chores (such as sending PERST# packets to PCIe adapters). It requires
loadable firmware which will be posted to linux-firmware soon.

This series runs as-is on a Glymur CRD board, minding its limited
usefulness given all of the above.

I know this series is not the entire feature set and that this was
promised quite some time ago now, but as I was humbled to learn,
sending 80G over a wire is no easy feat. I'm looking forward to
removing the remaining roadblocks and hopefully getting there in the
upcoming year. Please chime into the bindings discussion on GitHub if
you want to help there.

Dependencies:
 * https://lore.kernel.org/linux-arm-msm/20260409-topic-phy_fastclk-v1-1-6b4aaee56b90@oss.qualcomm.com/
 * https://lore.kernel.org/linux-arm-msm/20260928-topic-usb4phy-v6-1-815a73b063ef@oss.qualcomm.com/
 * https://lore.kernel.org/linux-arm-msm/20261123-topic-usb4_clks-v1-0-531ab5635c03@oss.qualcomm.com/
 * https://lore.kernel.org/linux-arm-msm/20261117-topic-pga_nousb4_glymur-v1-1-0ede74e620d0@oss.qualcomm.com/

The base commit (contrary to what b4 says, because of said
dependencies) is next-20261116.

[1] https://github.com/devicetree-org/dt-schema/pull/196

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (13):
      phy: qualcomm: qmp-combo: Add USB4 power_on/off to de/assert USB4 clamps
      soc: qcom: smem: Add and export qcom_smem_get_serial_no()
      clk: qcom: gcc-glymur: Don't poll the status bit of some USB4 clocks
      thunderbolt: nhi: Clear ring interrupts when not using MSI-X
      thunderbolt: nhi: Process ring completions in the threaded IRQ
      thunderbolt: nhi: Add pre_switch_suspend hook
      thunderbolt: nhi: Resume the domain if the NHI suspend op fails
      thunderbolt: nhi: Resume a runtime suspended NHI for system suspend
      thunderbolt: Raise TB_TIMEOUT to 500 ms
      [HACK] thunderbolt: Refuse to activate DP/USB3/PCIe tunnels
      thunderbolt: Introduce Qualcomm USB4 router driver
      arm64: dts: qcom: glymur: Add USB4 topology
      arm64: dts: qcom: glymur-crd: Enable the tertiary Type-C

Wesley Cheng (2):
      phy: qualcomm: qmp-combo: Add Glymur USB4v1 PHY sequences
      soc: qcom: pmic_glink_altmode: Enable TBT/USB4 negotiation

 arch/arm64/boot/dts/qcom/glymur-crd.dtsi         |  107 +-
 arch/arm64/boot/dts/qcom/glymur.dtsi             |  703 ++++++-
 drivers/clk/qcom/gcc-glymur.c                    |   12 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        |  321 ++-
 drivers/phy/qualcomm/phy-qcom-qmp-dp-com-v3.h    |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h |   22 +
 drivers/soc/qcom/pmic_glink_altmode.c            |    5 +-
 drivers/soc/qcom/smem.c                          |   22 +
 drivers/thunderbolt/Kconfig                      |   13 +
 drivers/thunderbolt/Makefile                     |    3 +
 drivers/thunderbolt/eeprom.c                     |   17 -
 drivers/thunderbolt/nhi.c                        |  168 +-
 drivers/thunderbolt/nhi.h                        |    4 +-
 drivers/thunderbolt/pci.c                        |   15 +-
 drivers/thunderbolt/qcom.c                       | 2299 ++++++++++++++++++++++
 drivers/thunderbolt/qcom.h                       |  251 +++
 drivers/thunderbolt/switch.c                     |    4 +
 drivers/thunderbolt/tb.c                         |    2 +-
 drivers/thunderbolt/tb.h                         |   20 +
 drivers/thunderbolt/tb_regs.h                    |    3 +
 drivers/thunderbolt/tunnel.c                     |    2 +
 include/linux/soc/qcom/smem.h                    |    1 +
 include/linux/thunderbolt.h                      |    8 +-
 23 files changed, 3914 insertions(+), 89 deletions(-)
---
base-commit: 516d5c8f674bc07eb35c3b97fc21e79e41158dee
change-id: 20261124-topic-next-20261116-fsm-mvp-b936003bd2f2

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
