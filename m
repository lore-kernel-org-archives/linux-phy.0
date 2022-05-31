Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40F49C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 01:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqL8IqV1DrHiwV5KRtByJDHj9H+ZPWu5Ac7qvJaz5Ss=; b=qlm01/BFZ1C3PP
	pp7KyGyfw391zf7bBIcIf96x5J2kibQMEyxFD2Mn/s0HdYKjzhPGcN3LDF84Qr5zDIOlVYcpE97db
	mqkUzBaaah5wjmlv+pOAbvVCtHaodujek78XCyugQtXYFeexPAYxMCvXeOUV8LqjYj1Akz2vbUPq6
	d2PRR64WWxpqlvATTfZ8pjCMuiaRWkmTRnJLhmdP9pgIQlQs0CKxPB2mzaRNyRcNpiaqDm1jN5vvP
	0mjfW24sIiKdK3E5rZDQlAVBzRYB4luj9kgi1EMFitM8J/FCUTCD3/YQEEdRUdyku/IwGnaGapiWm
	7hr6+cJ6hqVzEHoMaSUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvqck-008oM2-Cf; Tue, 31 May 2022 01:24:42 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvqc5-008o4s-48
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 01:24:02 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220531012358epoutp03a6ab996e380d20c99f64b7caecac11d2~0DBL7poz_1677316773epoutp03N
	for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 01:23:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220531012358epoutp03a6ab996e380d20c99f64b7caecac11d2~0DBL7poz_1677316773epoutp03N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1653960238;
	bh=2xE16+poKZUpsERnDutvCfBuUjpwTHNWmE5VdXCEg4w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZqsROXNI+RCIGnVUHoWkoQv5pz1R8Uv6n4ZWHWf6zX3UXGkLz/gllDtklQksqsf4O
	 FVbXkLGJEQzh5hDVeekRnyhfgNWt4H3jvYlN/3zWK1iulaGJ9QDbrSH+0jZkAc3/ZL
	 ZkIPki7b8lXaJG2SPW12VUpWINTYXCx2ipjl2h1Q=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTP id
	20220531012358epcas5p3685e4729902082b5850852db10707d3f~0DBLRBq3z3040830408epcas5p3_;
	Tue, 31 May 2022 01:23:58 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.183]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LBvgY2SDGz4x9QF; Tue, 31 May
	2022 01:23:53 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	25.6B.10063.82E65926; Tue, 31 May 2022 10:23:52 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d~0DBFJ4O6n0646106461epcas5p3N;
	Tue, 31 May 2022 01:23:51 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220531012351epsmtrp24a38883a0858a38a80ae8d04b9a3152e~0DBFICmsI2336523365epsmtrp27;
	Tue, 31 May 2022 01:23:51 +0000 (GMT)
X-AuditID: b6c32a49-4b5ff7000000274f-ae-62956e28cd72
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	01.E7.08924.72E65926; Tue, 31 May 2022 10:23:51 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220531012349epsmtip2131f8e569927d4ac937c103a6681b312~0DBC4b_bT0656506565epsmtip2R;
	Tue, 31 May 2022 01:23:48 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>,
	linux-fsd@tesla.com, Bharat Uppal <bharat.uppal@samsung.com>
Subject: [PATCH 4/6] dt-bindings: ufs: exynos-ufs: add fsd compatible
Date: Tue, 31 May 2022 06:52:18 +0530
Message-Id: <20220531012220.80563-5-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220531012220.80563-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEJsWRmVeSWpSXmKPExsWy7bCmuq5G3tQkg4ntohYP5m1js3j58yqb
	xbWXF9gtpn34yWxxeb+2xfwj51gt+l48ZLbY9Pgaq8XDV+EWl3fNYbOYsOobi0X39R1sFsuP
	/2OyWLT1C7tF694j7BY775xgdhDwuHzF22PTqk42jzvX9rB5bF5S7/Hx6S0Wj74tqxg9/jXN
	Zff4vEnOo/1AN1MAZ1S2TUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqt
	kotPgK5bZg7QD0oKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6XUgpScApMCveLE3OLSvHS9
	vNQSK0MDAyNToMKE7Iyuni3sBevYKpYvOsXcwLiFtYuRk0NCwERiQscE5i5GLg4hgd2MEm3H
	5rJDOJ8YJZZd74JyPjNKrFtwlR2mZe2hs0wQiV2MEgt7fkBVtTBJnDt3kw2kik1AW+Lu9C1g
	VSICzYwSBzt2gTnMAueYJJ7t3cAEUiUs4Coxe+4jFhCbRUBVYurO+WBxXgEbiY1Hz0OdKC+x
	esMBZhCbU8BWonvjabBBEgILOSRO9T9mgShykbjwcTOULSzx6vgWqGOlJD6/2wt0EgeQ7SGx
	6I8URDhD4u3y9YwQtr3EgStzWEBKmAU0Jdbv0gcJMwvwSfT+fsIE0ckr0dEmBFGtKtH87irU
	ImmJid3dUFd6SExc9IIVEhATGCW6n75gnMAoOwth6gJGxlWMkqkFxbnpqcWmBYZ5qeXwqErO
	z93ECE6cWp47GO8++KB3iJGJg/EQowQHs5IIr1XE1CQh3pTEyqrUovz4otKc1OJDjKbAIJvI
	LCWanA9M3Xkl8YYmlgYmZmZmJpbGZoZK4rwC/xuThATSE0tSs1NTC1KLYPqYODilGpiU66/0
	3oip+iOip24Tzla2qLDNp+HBnIajQv+ubp7l963pts2Jy+9lKpI2z07eW/Vv/+Md/czqEon/
	f//jntDySnJanJnHyrrN2r85brTXVZoI1U6Xsot6LGcxMyPku98pxhlbml1333hYfrxVuM7u
	3PLXG5wDGx/GbKr95HSxLmD52pwDDU5dLCEV1rdyFt00uej3w2jDVBuTlnWCldHK7HM1VY59
	aF//U7uWWSJbmflYZ9j+f92PN612KFx7599Uh1s3LgcwPPrc8eDnkrL5O69Ofzdf1a/rx4Pe
	6QbzdpSb17yLnbvMNOkPq4XEfa6lMc+8JypM/D7pbHiIpFDeRFGRNyt2VV9WsElyeOCtxFKc
	kWioxVxUnAgA6oa5ByUEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMLMWRmVeSWpSXmKPExsWy7bCSvK563tQkg/1XpCwezNvGZvHy51U2
	i2svL7BbTPvwk9ni8n5ti/lHzrFa9L14yGyx6fE1VouHr8ItLu+aw2YxYdU3Fovu6zvYLJYf
	/8dksWjrF3aL1r1H2C123jnB7CDgcfmKt8emVZ1sHneu7WHz2Lyk3uPj01ssHn1bVjF6/Gua
	y+7xeZOcR/uBbqYAzigum5TUnMyy1CJ9uwSujK6eLewF69gqli86xdzAuIW1i5GTQ0LARGLt
	obNMXYxcHEICOxglVqyayQ6RkJa4vnEClC0ssfLfczBbSKCJSWLPCk0Qm01AW+Lu9C1MILaI
	QDujxP3tbCA2s8AdJolVPSIgtrCAq8TsuY9YQGwWAVWJqTvng9XzCthIbDx6HuoIeYnVGw4w
	g9icArYS3RtPM0HsspF4fP81ywRGvgWMDKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS83M3
	MYLDXUtrB+OeVR/0DjEycTAeYpTgYFYS4bWKmJokxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdC
	18l4IYH0xJLU7NTUgtQimCwTB6dUA1NpgGWTtfzNL1d2BjJ2lgvHTjbWyllz//e++9NX5Mc+
	U9PM/BwyTYfniI8Md+y382t7XvwyubL4w8nJ86Mnvfp2rdtbdv2H57dZd3KVHC39YW78ZmI1
	f9D1oJmMh1Uzyr+vSue26fCXiDdrTuTp9npzzc/0oub3zSoH1MNeHldI3dS+6MWJzQuvpzxz
	ELz+ONP5tXLaLgFxkfao6B8bD8+Yd6VxZfHSqwenm6dNTy3Z06J+SFV1suKuoBlLtwuus2Bb
	oHjvYUxi2yuuHWtTxc++vngi5UNK4QRVvcijcmr7JMOuTJFdMH12gf6NWbfmdTqprQ+Zsd7R
	vWx72DzDd9nLln0u231x89UEn6B5ObapSizFGYmGWsxFxYkAePRM4uYCAAA=
X-CMS-MailID: 20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
	<CGME20220531012351epcas5p389e28e28a48f9bb14a52fc81c417296d@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220530_182401_596140_CA56EBC8 
X-CRM114-Status: GOOD (  10.80  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Adds tesla,fsd-ufs compatible for Tesla FSD SoC.

Cc: linux-fsd@tesla.com
Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index c949eb617313..2c715eec48b8 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -21,6 +21,7 @@ properties:
       - samsung,exynos7-ufs
       - samsung,exynosautov9-ufs
       - samsung,exynosautov9-ufs-vh
+      - tesla,fsd-ufs
 
   reg:
     items:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
