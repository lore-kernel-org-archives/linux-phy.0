Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5D5C02180
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1c2mUz4J3aNTANQyIUiB4q3RCGLxN59nC9EFiE0Rjs8=; b=wN4AWuWZIshgka
	1Yf+hjHbOgn+B4ypxsvWsG3e+09URdCFcII8/JlFxkPAuB+UiN66pLmZPWG8ZLVo73aeS5ph0YvNp
	jPKHQRk0AsSk4QO7Dh4fnOyxu1o0AbtDhDpKhcv2fpHo2INzaiDWCOQAyMiCkvlkvylKD+BNtqVOO
	yzmuNeFWL2JX65LHK2LcSlQGvX3zDt6XR21yUGWa2JhUMvt9N713Ft/v4XfBR+xhQ3DJN7+Hgj2dp
	bPTTQfNa1V59L3BvLAeV4/o9rdhsa09G/0uZf0tTXqg5G+eHqw3i2rXTtZYZBjOkn+LkmVAELHWn4
	NnXpktNufxYxNFD1yssg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spMqQ-00000000G8A-0WwD;
	Sat, 14 Sep 2024 07:05:22 +0000
Received: from mail-sh0chn02on20705.outbound.protection.partner.outlook.cn ([2406:e500:4420:2::705] helo=CHN02-SH0-obe.outbound.protection.partner.outlook.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spMqM-00000000G6z-1AzL
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 07:05:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SqXmbdidoTJJ1O918G85zTTuOhYKEImnuoNbFvmhRCVk6joW1a5ez3uN9v017eqhkY3CaxDnFZOvFIZSRFHZmfSeffwvgUwViMYDCa/FJ9gUohkvim1DMuXBQuvxCzz+2EVrLMjxYZN/RoP1KigDilGZR4WlNo5koILqIRagYsKnzKgDdZBbscMJOnrNjU1IWayitDzO/peOMqB09OBMcB1IeyQ/DvSoqhDCeU7eLO/ZiVA5FwqXNuKlpXETwebI7fHJ61kJkNuosuOHuFw3E5k0S++lGbCIzip34xVROyfYiPYnfwTE3L2Ca05IRU4gxzXqoj4/w8rtmFj3NqJ+3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XVjf+drbLutqHzUU22cKZ5Yxh00J4q+BvCdvtexAKUc=;
 b=TUG4iKvdb6Hzr/zx3fFMADiOYGOMym4lRtTMT8T4wo+M/NnmxbyfNvpU9yaErjuP4ONMtekGDYRKb77l7E9PPjLXPjM1KxFhhQjJ4tOkHIXjy4gkeKxHjK//z5i0kq7nWuLulOKzERg5/BwPPNoqfS2dteXZd4YMxtwf1VSOSwNfDDG2dlSE1DGG1qZEAh0J2TChf5+BV4WZOd7f+PuOnNGbUDvFaly8G4SLWvG6/cvxmhD13bVU1xxBndPrVROJ0t8hhQCWunE3sw78+SBTdg5sOCgyYBVox1YyG0S5jKwge7y2cVIuneuoSJrW08AQDhmLeX8oD/tMCS4yEkD0yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:25::15) by SHXPR01MB0511.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:1e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.20; Sat, 14 Sep
 2024 06:49:04 +0000
Received: from SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
 ([fe80::3f35:8db2:7fdf:9ffb]) by
 SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn ([fe80::3f35:8db2:7fdf:9ffb%6])
 with mapi id 15.20.7962.018; Sat, 14 Sep 2024 06:49:04 +0000
From: Minda Chen <minda.chen@starfivetech.com>
To: Conor Dooley <conor.dooley@microchip.com>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Jan Kiszka <jan.kiszka@siemens.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Rob Herring <robh+dt@kernel.org>, Conor
 Dooley <conor@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/1] phy: starfive: jh7110-usb: Fix link configuration to
 controller
Thread-Topic: [PATCH v3 1/1] phy: starfive: jh7110-usb: Fix link configuration
 to controller
Thread-Index: AQHa/SjhiXxDr9AYPEm7hgAwfhkcBrJPVUuAgAeUwaA=
Date: Sat, 14 Sep 2024 06:49:04 +0000
Message-ID: <SHXPR01MB0863955434409B0269300E6EE6662@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn>
References: <20240902111127.15155-1-minda.chen@starfivetech.com>
 <20240902111127.15155-2-minda.chen@starfivetech.com>
 <20240909-drizzle-hydroxide-dd405c4c3a6d@wendy>
In-Reply-To: <20240909-drizzle-hydroxide-dd405c4c3a6d@wendy>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SHXPR01MB0863:EE_|SHXPR01MB0511:EE_
x-ms-office365-filtering-correlation-id: e12d83e6-863a-47a4-5322-08dcd4895297
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|41320700013|366016|38070700018;
x-microsoft-antispam-message-info: 3TvOJtAd774yOUkqwWYdyadxjIrcevzOpYwj9DACVKhxryZhPb21O19HpJHaxlPJQUoVQKb5TtaXaFDeJ1K5xiwvRPkSPTSmx9SCf7i+/FMCHWD4yGQW27XCWtUTHwSyyLyQnRvh+k/Ho/ruZnNOHrRbGdFiMduS/R4GmOuxEl9bm+VyejH+9kK4xDtB4S+pKEPV9qgPWq4B+wpReuyl6vuA35bzjjdHJMlK9YsIcVuSUjv8Z4IYeozlNVIIWCCgw+RqWPT0Br6xWbtfhgdG0C1Nslv5REzvGYJ7Nkw+gwc9l0i+HzXoGY6ZaLf8+0eGhetR8KztebVqftbzeOZ9r2F2L2k0uQKrcMq2nt91R/FS9nVeBYTRDra/kSW07qN9WqYq/+4nAPeFEIxhKcf1VXcYvZQEGWocWKbLq7mWFCM5V0zIDq5XupHdA5LRRWv3OhBCQ4WLHFEpqdcI0owXHyQcqANzwmn1r9r/dfPIRphlvm9Jqzp9w6V8ZI5VmNPFHnM6HAOrZ1wHoZ6jHGkMdk4XISrhSEU7aFhUSA0oxrEKcf7ebVSs8/th+Wr8wDzAaOIAxChpLdQyuildFnCizpPLauuu/O3/ZTncaO7ow8p2UM/4dVHzNs2AR6rSJttJ
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aAOjtbd2LsGi3A5diF1D0meJf8Rwxj/ohI6oejXBIkKheVHUD/m0Iu/Fatz3?=
 =?us-ascii?Q?TxvGMywMSpqjWng4sQQZLGO0JiAUEpzfPq/D7dET+2hh39LOa3T4+UnhXFLR?=
 =?us-ascii?Q?AxbymNOdLFJDA7ttiF9Mw0CnWw2Bdy8k+yHQTViLPsVoGlEktR6Z3K9P6Bvk?=
 =?us-ascii?Q?t3jNQFeZQQF7LRo0Eg3IPXikI0W8yicnCradGt9QargDpxuuquk8NVL6ttea?=
 =?us-ascii?Q?ucUeeRjSdViuyfjHIGXl+tP1cWsuBhmq9iNbcjKk+Y8G4qS/FE5KW1HLTR78?=
 =?us-ascii?Q?ylzePqomvEdsFUszpXrnzpZJFCuJ0ZCS1NxYR1drdDY4S+Vj2eIPTDsAfEPT?=
 =?us-ascii?Q?uio27BfWgWG2BDiMb64chOVET6I+oVKDIkVPdHYEUXCtY9cOvFlSzTO28HKU?=
 =?us-ascii?Q?1soeGzqHB5TzRm9HGWiygMAy1NnQ/jL891z89G+ZbEIyPl0HiV+FXNOnBjhL?=
 =?us-ascii?Q?mpYpC70pPTbPXyY0ULndksUHTOqiM26QBDnkd0oFLhW/D143w38IUBBc4CXu?=
 =?us-ascii?Q?B+3Wc04IyPbV8YlIiEkgGoiwCM52VLAat+YVRreAuI61iD+ffytHtz1zwLD3?=
 =?us-ascii?Q?qZqm8Rf2Q9/RmheicXMqBKubsfMjtPvBLmA9trn8po86IHAL7UKszzDXlNBR?=
 =?us-ascii?Q?fRCkCbLIsCol3LhsjdxBIoGNaXLb+8Zh87tMCizZAIqzcP29dk7PT91dS/N0?=
 =?us-ascii?Q?fq14Z7tirTJqg5gG8tO8ls23tcQTji1QLasKFnaMFRom1bd4Hb9Ow3pyQUyW?=
 =?us-ascii?Q?ui8/S5Xeai9nBwflgtRvRTiy/JUA3EQtGbkg7zD49z4AMO9LrU5CuR3e6hox?=
 =?us-ascii?Q?nc4i4Fe1HDbI/gu50HAYo+pcdJ6oU84OH//D8tSNXGdFSsSad5mdkY9YhP6a?=
 =?us-ascii?Q?3RDw5SUJAoa/j+IAjO1CVcoCyl/rYQNSXei+93Q1t+0bQ9gV0TjT+D4BtYe6?=
 =?us-ascii?Q?GskEYpG9eTldDXez0h95a/vAnTUvR2XqC5r6CRqTpfoXKtovohR9moH9l7G3?=
 =?us-ascii?Q?YyBe53vG/Lz0xIa/IQvWrPrywKPOHiY10HVzyQYy+XbqF+Bj9Th+m5ZFCj7p?=
 =?us-ascii?Q?8J797c7SsFyaZVHclGAlBxUJ61W1NagaXIxBev7mGR5PeOl9/Mnqio6r9fku?=
 =?us-ascii?Q?9Zgj/8kj/LYLxyokWdtr7T1IWTH4cwEByz/pxnN/QQBJkxyARGKmSzIhXfdS?=
 =?us-ascii?Q?eiMoDqRvAh7OtPIYSTgBGArF+0F3ErW4x7hpbLz3CIHJlOCzXLNkTyohz/fV?=
 =?us-ascii?Q?4k6kCMdssLRhILOLTwAIPDUyjjnCpyQvrgdOzmosaeJfZfkLqh6VGiO9CAcC?=
 =?us-ascii?Q?VP7WQN38cEb3aWBlJNO5Mumxd/7Lq0pCR0+cxVGigs9cJ0OjDbZtVFPKz1hE?=
 =?us-ascii?Q?m65kV0hUlZVkhJF5/u+FLgfNhaOxKxf6KBbn5KiIpcxIj0+1Wz2G0kqjgh4Y?=
 =?us-ascii?Q?bfT8X9JVw+S2C4g2yFuLcsBGntjc2vXJ9GgpGbeRR35TR25Z6nHdYNSwWeby?=
 =?us-ascii?Q?k49CV6OglWol0M/rNzpnh9ooIPj50qCGfDodTndJnkWmnYDVNI5mUwEM9oC1?=
 =?us-ascii?Q?Z+Cvz5ZZn4a1wcyLCfKG2o8v9lftACkjOQWprlfKzaM3+1ck/NZn5pVDIVJ6?=
 =?us-ascii?Q?0A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: e12d83e6-863a-47a4-5322-08dcd4895297
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2024 06:49:04.0826
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cdB1St6UrSm08K/x2V+raKiLwnW3ZrmFp6VRTusPFWTh6kbo7bGuoAwao5D+39gcf0L0IoA7Akth7DFKKXZQBCaGgQePBYZvwdkLeY3NETc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SHXPR01MB0511
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_000518_326921_E10A8412 
X-CRM114-Status: GOOD (  10.71  )
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

> 
> On Mon, Sep 02, 2024 at 07:11:27PM +0800, Minda Chen wrote:
> > From: Jan Kiszka <jan.kiszka@siemens.com>
> >
> > In order to connect the USB 2.0 PHY to its controller, we also need to
> > set "u0_pdrstn_split_sw_usbpipe_plugen" [1]. Some downstream U-Boot
> > versions did that, but upstream firmware does not, and the kernel must
> > not rely on such behavior anyway. Failing to set this left the USB
> > gadget port invisible to connected hosts behind.
> >
> > Link:
> > https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_syscon.html#sys_s
> > yscon__section_b3l_fqs_wsb [1]
> > Fixes: 16d3a71c20cf ("phy: starfive: Add JH7110 USB 2.0 PHY driver")
> > Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> > Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Conor :
   Thanks

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
