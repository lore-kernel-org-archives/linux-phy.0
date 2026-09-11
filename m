Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C5CEC88E4C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 10:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1M2B9JeawWvp9tuuXiS3z9y9GqIN/YCUzAdelhAyJo=; b=QNfpmoAjiNtOnN
	VxMV+wJTaGx9qSLNZFY/TQOCxvqBEL6AJHrLIwfkALKh5LEb66xZ4lgr8/GhLp1alT2KhHDXqTxZK
	lbTwa3S/7oJoflTVXeCkgWFM/+laUBDzRzQu1G5GU5EYHB+siLr1ZZ7U1KJRKmAe/FtvtK39JwZNz
	Cha2mmyicqq8Bph+RBjrTeZ7NJeJv74606m93pZTTlOcFIllxCt3jYCrOrUyMKY9r0pQHt69BZx+5
	Rk9fGvqYTmThqOBsRyhesk2ES87Qp6obUcPyMqL865IzIfXHUXu3x3SVB6AhZDqr6KG6AXiEFyYeW
	fGv+ZYB1LhvCdqiFecDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4yPG-0000000GNHR-2HMB;
	Fri, 11 Sep 2026 10:22:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4yPA-0000000GNFz-04Nz
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 10:22:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68B7koMh3464007
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 10:22:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tDweQGfiDsekOj0T2784PA2rCFWCh+RkBLsA7n7s2rE=; b=iNuMl10JnOkrBvNr
	n2Y5oDnpdHx5rpmFkY4AD9L4wOL2CfWozbGj6GhbcPVGy+3azf9v4cMvSdc4pIq3
	G+MdrFSluFt83raNUpUP0UgtTVrWwCuJYCkSKmR5HHMfJ32Mk5a/8vAq99sgNa24
	OlAjL1QV/kJHxZPM5dI2gO3EMkt48/QnighBWtrYMyabnjUvBmMRCzBPpzw746T/
	q/aZcrQFU7Aym4wZYhN35EC+JO2ecMJLAgFgpUBiMWRU6fhkUoOqBllIpKAW2P0q
	idi9EplvOYdiRzaWbWdDanAPxindBPXXbxi5bBb+ekEoF5vZ/mRjM5Ciy3m7oWz+
	WLnm6Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbdr95j0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 10:22:46 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-930b571432fso154057385a.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 03:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789122166; x=1789726966; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tDweQGfiDsekOj0T2784PA2rCFWCh+RkBLsA7n7s2rE=;
        b=Qz3eakNlObDN+V422IioSynS40iEaa0dPYkqODYsni/wby48p8gNi2nwK3XymWNBR3
         oHMQaJSow87i8yP2lZldxanfqPb0CTF3zPIjft2c3MNa40tdrDh8BvjTTmqJllYP8SX7
         sFHiktkIHzx/tmJj9fc/xxk31nwwHueD8SPtyGnX2O1WbNAbq0sZAQH5/twySd3rsTTZ
         UEVRoeOA20IHu/oDS2KHhPvzSvxhibOm110yXd6FrCGt6HHHUfk1PXcVqZYyhLzwdO6e
         Hzs7KCY779Tk8c/fG3XuCkx/dpxyZXEBKW2xL7fAKrQ6I05ThaMyq8XgUxubeu+qyw8U
         gSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789122166; x=1789726966;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tDweQGfiDsekOj0T2784PA2rCFWCh+RkBLsA7n7s2rE=;
        b=JFT3v2LcpPi9D4OmdLDc73PemkNIOcQyy/7vug0cSUofJ6Swi2hNr/z5lUQp629Zfx
         pc9wfkms6GAkPi5K+cEiVaOX5rRvLWROFCEYbzK6Q03qPpKR6Eqy+JpAUsvErTU6Asae
         nQt9rkCB1KMGnu+Ofma//o9KvwplzLrDXLSV/WkWbur2KO93Tb452viImosC+Dhvfji7
         bgW1Ci6JU0bPDi2/DODAetWOBgfoehKwNkMVaPOvYHYwGPLlEmximFKqihG4f0VXuWjr
         jn1tAsEJ1c0DO8CH2UjeMfv2bjFQqOQH9MD0nZff3AXCfD85G3yVHR9ISAQTh0ngqCua
         ip6A==
X-Forwarded-Encrypted: i=1; AKwUvByzhIKhDr2nq3H/xoYcQ+CEC6/LidktQACdKDEIcruB0KRhPScV1+G1qUOPIbHcRvQz81joJC3EqvA=@lists.infradead.org
X-Gm-Message-State: AFuF++m3HCGU1xdNzWfJkbyjXgJa7KO6FP/mUUqsQdtG/K0+R9Lq9fNM
	ZaIvysvfhnfphkqn3ILsbttuo8Y5p3hBWGOzbNxfVMIgwZDAox5sortGJnNMCQKZQoJOQ5UWcZx
	lUCKdqgtzyGr61pfsDRAGViMgsIqOYbMwEXXSyUSbSb0T6oMy46JtFUp2ViUaa3OGhAKF
X-Gm-Gg: AYBFou2i/9xsUyxObAYLcNoSW1bdJ0tL84D50lBP4l1jUItAa+GM/kg2qVXtJY0bHrW
	jNBnLqk2nUu2FhfOTNvJKOF3O3a4Ked7fx8obWBVuSQGoQHSD6hvMd648shdVyKzzz8m4+L91i8
	Qjm9ksHZgc8Iz9KUISCflTHKa49MY4aPRVOG1W/brRXxLoRbQ7M3IPcl7NIKt+Sk4Ue/GedKYQq
	7XuogmqQFRpqSbBxDn9MLdLonm4YzFPuFpi3ZZhWa3A/ax6jtXZauBu2glVQVucANZK02qbx66l
	XcmpJuiEh1FhQahLEfF0F/d61XZe/36WCd2+VRoosVl46wuoEQVYuDZux7Ufvzl5j7vH4wJFrim
	AAr3up4KwAcvERLfbF4ptzN4CxRopC/Je9Ki9Pz3Wfj8dDB0H7z3S787Wlgz0XY8=
X-Received: by 2002:a05:620a:4482:b0:939:c7dc:8712 with SMTP id af79cd13be357-939d7eaef14mr1043335485a.15.1789122166154;
        Fri, 11 Sep 2026 03:22:46 -0700 (PDT)
X-Received: by 2002:a05:620a:4482:b0:939:c7dc:8712 with SMTP id af79cd13be357-939d7eaef14mr1043304085a.15.1789122160909;
        Fri, 11 Sep 2026 03:22:40 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7? ([2a05:6e02:1041:c10:7d20:e20f:a77f:4ef7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e60a8a89esm63701295e9.1.2026.09.11.03.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2026 03:22:39 -0700 (PDT)
Message-ID: <81b9d76d-6036-45fa-8dcc-c180d102ef64@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 12:22:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
To: Arnd Bergmann <arnd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Linus Walleij <linusw@kernel.org>,
        Russell King <linux@armlinux.org.uk>
Cc: Drew Fustini <fustini@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>,
        Stefan Agner <stefan@agner.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Aaro Koskinen <aaro.koskinen@iki.fi>,
        Andreas Kemnade
 <andreas@kemnade.info>,
        Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Kristoffer Ericson <kristoffer.ericson@gmail.com>,
        Ethan Nelson-Moore <enelsonmoore@gmail.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Alexander Sverdlin <alexander.sverdlin@siemens.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Karl Mehltretter <kmehltretter@gmail.com>,
        "David Hildenbrand (Arm)" <david@kernel.org>,
        Nicolas Pitre <npitre@baylibre.com>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-stm32@st-md-mailman.stormreply.com, linux-omap@vger.kernel.org,
        Alexander Clouter <alex@digriz.org.uk>,
        "Jeremy J. Peper" <jeremy@jeremypeper.com>,
        Damien Le Moal <dlemoal@kernel.org>, Niklas Cassel <cassel@kernel.org>,
        Ulf Hansson <ulfh@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Thomas Weissschuh <thomas.weissschuh@linutronix.de>,
        linux-ide@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-rtc@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, linux-sound@vger.kernel.org,
        linux-gpio@vger.kernel.org
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
X-Proofpoint-GUID: 1Bg-iqTXiHFu27AJF2VyagUdhQ5zcd0r
X-Authority-Analysis: v=2.4 cv=PLmaavqC c=1 sm=1 tr=0 ts=6aa3d676 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=pGLkceISAAAA:8
 a=P-IC7800AAAA:8 a=qUSviUioAAAA:8 a=bcVNC_F_AAAA:8 a=VwQbUJbxAAAA:8
 a=1XWaLZrsAAAA:8 a=_jlGtV7tAAAA:8 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8
 a=LCLTMPDaK1Elu1LaZkAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=d3PnA9EDa4IxuAV0gXij:22 a=NaVVo_BLbmHoeYVcMpQ9:22
 a=XlnQEC-7T2amSQPCFme7:22 a=nlm17XC03S6CtCLSeiRr:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 1Bg-iqTXiHFu27AJF2VyagUdhQ5zcd0r
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDE0NSBTYWx0ZWRfX/GgPO3HDLZaO
 9sYgVQQItkjf5OC3q0T6qjcQYJUdyGu0DiBFE+GeeW63F9OXM4M27FDuvb+bDdxvc0A6GwydLUB
 gH3Q2uNnCtmWKZR76RW3yn8avJpFYc0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDE0NSBTYWx0ZWRfXyxbFEYkF8SrO
 AkncrY+/Bq0YByauGy6GpWdzowszldKU+6zTsgVjlnGohq6V72dNxqjKiJzea5m7qyESz9H9peX
 EAydL7fXOHdx35G3T4v7qPbe4o799AjnjP6D+apP2ZCzzfynlhLbr8u+QP/3jqkCmUVNie4JNob
 FfZo7ZW9izG9DakZW6Ps12mbz79YnaTYfxrUv1vRpHPEL9sSgbEXM5RNsFUOawsrtwaCfpAQrxx
 evFGXEwyUI32z71lPo9RVh3mFbF9o2YFYFvsj01BSJF9hHIafzO2ky/XUxRlqFdLaxnbkIz4lBa
 WaxSeOAycBtSKq7Do4LV5wQcjN/wMH5oIHhlTejTgjYFu6jFsUNKCMVgl1lcY26X3qGLNAjX/K1
 dseQijiqqyooxLbDfwKUC2/OacT4MqK/hxtHwRhpmd0T/cY6VEUqKwXiAOMHhakeFWPFJ2dm849
 kqxXPM61LzPYQLVTnOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_03,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_032248_165495_60E1B359 
X-CRM114-Status: GOOD (  17.23  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gOS84LzI2IDE3OjI3LCBBcm5kIEJlcmdtYW5uIHdyb3RlOgo+IEZyb206IEFybmQgQmVyZ21h
bm4gPGFybmRAYXJuZGIuZGU+Cj4gCj4gVGhlICdvcmlvbicgcGxhdGZvcm0gaXMgdGhlIHByZWRl
Y2Vzc29yIHRvIHdoYXQgbGludXggbm93IGNhbGxzIHRoZQo+ICdtdmVidScgbGluZSBvZiBNYXJ2
ZWxsIFNvQ3MsIGFuZCBvcmlnaW5hbGx5IGNvdmVyZWQgb3Jpb241eCwKPiBtdjc4eHgwLCBraXJr
d29vZCwgZG92ZSBhbmQgYSBmZXcgb3RoZXJzIHRoYXQgZG8gbm90IGhhdmUgYW55Cj4gdXBzdHJl
YW0gc3VwcG9ydCBhdCB0aGUgbW9tZW50Lgo+IAo+IE9ubHkgYSBmZXcgYm9hcmQgZmlsZXMgcmVt
YWluIGhlcmUsIHRoZXNlIGFyZSB0aGUgb25lcyBsZWZ0Cj4gaW4gMjAyMiBib2FyZCBmaWxlIHB1
cmdlIGJlY2F1c2UgdGhleSBoYWQgc29tZSBsZXZlbCBvZiBzdXBwb3J0Cj4gaW4gRGViaWFuIG9y
IE9wZW5XUlQsIG1vc3RseSBmb3IgY29tbWVyY2lhbCBOQVMgb3Igcm91dGVyIGJveGVzLgo+IFRo
aXMgZGlzdHJvIHN1cHBvcnQgaXMgbm93IGdvbmUsIGFuZCBub2JvZHkgaGFzIGNvbnZlcnRlZCB0
aGUKPiBib2FyZCBmaWxlcyB0byBkZXZpY2V0cmVlLCB0aG91Z2ggdGhlIG9yaW9uNXggYW5kIGRv
dmUgcGxhdGZvcm1zCj4gYWxzbyBjb21lIHdpdGggZGV2aWNldHJlZSBzdXBwb3J0IGZvciBzb21l
IG90aGVyIG1hY2hpbmVzLgo+IAo+IENjOiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+Cj4g
Q2M6IFNlYmFzdGlhbiBIZXNzZWxiYXJ0aCA8c2ViYXN0aWFuLmhlc3NlbGJhcnRoQGdtYWlsLmNv
bT4KPiBDYzogR3JlZ29yeSBDbGVtZW50IDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+Cj4g
Q2M6IEFsZXhhbmRlciBDbG91dGVyIDxhbGV4QGRpZ3Jpei5vcmcudWs+Cj4gQ2M6IEplcmVteSBK
LiBQZXBlciA8amVyZW15QGplcmVteXBlcGVyLmNvbT4KPiBDYzogRGFtaWVuIExlIE1vYWwgPGRs
ZW1vYWxAa2VybmVsLm9yZz4KPiBDYzogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+
Cj4gQ2M6IFVsZiBIYW5zc29uIDx1bGZoQGtlcm5lbC5vcmc+Cj4gQ2M6IExvcmVuem8gUGllcmFs
aXNpIDxscGllcmFsaXNpQGtlcm5lbC5vcmc+Cj4gQ2M6ICJLcnp5c3p0b2YgV2lsY3p5xYRza2ki
IDxrd2lsY3p5bnNraUBrZXJuZWwub3JnPgo+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bmlAa2VybmVsLm9yZz4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBDYzog
Qmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KPiBDYzogVmlub2QgS291bCA8dmtv
dWxAa2VybmVsLm9yZz4KPiBDYzogQWxleGFuZHJlIEJlbGxvbmkgPGFsZXhhbmRyZS5iZWxsb25p
QGJvb3RsaW4uY29tPgo+IENjOiAiUmFmYWVsIEouIFd5c29ja2kiIDxyYWZhZWxAa2VybmVsLm9y
Zz4KPiBDYzogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGtlcm5lbC5vcmc+Cj4gQ2M6
IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5ldD4KPiBDYzogTWFyayBCcm93biA8YnJv
b25pZUBrZXJuZWwub3JnPgo+IENjOiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVsLm9yZz4K
PiBDYzogQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBrZXJuZWwub3JnPgo+IENjOiBUaG9tYXMg
V2Vpc3NzY2h1aCA8dGhvbWFzLndlaXNzc2NodWhAbGludXRyb25peC5kZT4KPiBDYzogbGludXgt
aWRlQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1tbWNAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBDYzogbGludXgtcnRjQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1wbUB2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGludXgtd2F0Y2hkb2dAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bnV4LXNvdW5kQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1ncGlvQHZnZXIua2VybmVsLm9y
Zwo+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gLS0tCkFj
a2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9Ab3NzLnF1YWxjb21tLmNvbT4g
IyB0aGVybWFsCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
