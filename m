Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030B1C54EE9
	for <linux-phy@archiver.kernel.org>; Sun, 11 Sep 2022 16:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tFhBdjrfHCaGZknD/xmD4zO2ajXBq8cjfUBLJNUAvO0=; b=dVOVGN6v1Wxidu
	s8uTT7djc5aDkIhIkK+TVlBukOh2DEUj5LPRh328UUTZ2VKn5i3jtlAjigHBMTfO3+SmsEW4p3TzQ
	BUVolHdu6FVBh68pc/2WDWGKpx0bfb+GIIHDrWp0bQW7ql0x0/XBcOhHTwb75KT+HPfd7m2ajV6Fw
	3E1cihNOLdMSvi2v/W/YsTbQZmcWCNzZXHHjmW2QOOTGn0zJC3eapEIyvbZLZodrYzL5GNJA4UGu3
	zbciCZU8Bs4McaLhJ8g7gzfO2RECLhM66cu03ZdMCnnGd8eenuX/qr7xLitKD6RMnmSi3Sdu7r509
	W2p3ok2UDfqGJQcLdPDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXPxh-003Dkf-6d; Sun, 11 Sep 2022 16:37:37 +0000
Received: from mail-bn7nam10lp2109.outbound.protection.outlook.com ([104.47.70.109] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXPxd-003Di9-RT
	for linux-phy@lists.infradead.org; Sun, 11 Sep 2022 16:37:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAcJWicjW2LDpMJf0169zVKKoTX3FiBFU05SiwwyYpOWROo07sSVcsK28WkGAnb0FKYAxXMc/RCfNa/Zs5+58qTLWssUDS0bFdRTWpu4l+BZp8ccFFSuupralwiySiR8Y9iYsFIkI348xy2V76DebwHJueI0uvpocwpFu4qd63J7Zx5pgqRXtZxKXVs+AZDmpYpCMfJ9pudi+S1BntDQFlvHnzYZZcuhLfRGHYOwb8r+6rjkeHGhg7RkINBQxd/5+9q9Q55TagULRwfCa59v9kIBnwnJB44jUPqGghJvoqXnj7qLcnbrYqrI6Xfhc/HtWUR+/JS+mJD616z8ju1LAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0qhUPBNOhz+kD4sYIG7SR2X03YxLr3zTNkLZGiPSMW8=;
 b=iAYHmTFwQa/6OOqLVoiLjucK6vsm5DRxuzOjlJ6bXCCoQZdbE1lNNeiSiIrqtR3sQ7gbLlHGSW8GnPHxzvEkg1Jqhf0Hep2LA4E6D36me36wLMHH/rNnS+oHEi2JeNWn2MPAvOMMTcJu7WwK7xysqSwYuwBw+42HtuzopZ0dDwbSLs0e9eSQ7ucxvoV1zLMjvpzjSjgBLRkEJgOErWoZIBm5wC/CDhPMJhSDqvA+BOZ1ko21A/1WO764+YvOQYr+f1v4vIKs0CvpGSDIQu2VbvKbD4vrWnZKN2Z7XhfYjdwuLOtt4ukaA1+JhKdb60ll+rFPnde0DGK2tnleGYs7sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0qhUPBNOhz+kD4sYIG7SR2X03YxLr3zTNkLZGiPSMW8=;
 b=rD1Yaz2HvsE2q2Rr0+69g1H/+7yQCdCvjzKSKvQXULCHtk98/8gs29yp2n7W7lhXfvzE8KtJF5pM3GpE1yx2LtRcAHaz7NcyKG0Rw/6ExExJq8IgdEbhOR9XQmd+5GK3UOC4s422mnoGt0+hVKwlyeeSI/NmIdDZxO7TlwdrSHQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37) by BLAPR10MB5331.namprd10.prod.outlook.com
 (2603:10b6:208:334::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.16; Sun, 11 Sep
 2022 16:37:27 +0000
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::38ee:4bfb:c7b8:72e1]) by MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::38ee:4bfb:c7b8:72e1%7]) with mapi id 15.20.5588.020; Sun, 11 Sep 2022
 16:37:27 +0000
From: Colin Foster <colin.foster@in-advantage.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-mips@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v2 0/1] Convert phy-ocelot-serdes documentation to YAML
Date: Sun, 11 Sep 2022 09:37:14 -0700
Message-Id: <20220911163715.4036144-1-colin.foster@in-advantage.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SJ0PR05CA0128.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::13) To MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e4fb3d9-8fae-4282-9098-08da9413e984
X-MS-TrafficTypeDiagnostic: BLAPR10MB5331:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	6xBSRfYmy1+nyHrDOug/ujAq9EP/bm4hhRFTZrLP/KJu3q26mWIghoX5PxEN2SmGRNUwZ68faifz9KIUvG2Ij7MN1dwx6Kg0EqsMiUnRdN+Lv69Bt1zigcl4z47ksyqCAuIcTdrwWYWhOwMPMarzpLQWX7+NWoIM1RyIO2h9j9mVmFAxSEvDwoQZkd+LSwraj2CeGZD71fHWYqXCoKwDetQRK3qOBa6bMfNZCIuBUfkeNpctOGko4Igfd/I0+2M7kY59zZXyT/qPS5xxdGNKDAz5sDTIRxeopEJpy9/MR2oG/J6PYam0fyllTyUsEfu0eV39ypbtlokS8bmg4xkWJnZQ6b0KerRz4gj7+xVl2xbRA3yQUHMDDM2AAgUM0+zeT4o0asovc2Hywelv4HfM7oY7E7ZsyrdmhK3cOWAQOZeAbJdS23IzHQ5c+pM0wTW1JAJqEl1H2vFFWWKBA3C4Jc1YMPnYH5eO1wd4JT/0H48ODDRimcn7wmJTbhSuh/OUMte4Q/uZ/WxeAdZcaZZXmJ9EbUXngA/ibSg3HSlY49jBXCfXmRAiUxtdsV+S5p3DHSPdOKQIMJH39iKN48XWtELpXqDFsEiL/VDGAaCnmYxQgyBc+/llgJ1nLd7ttKy4MRgzZyCZQGggXZA516kJ2NmP/wUTP9sTEQ0AGyD5Qn45yubTbve+HB17/AQtx1YT7nmbQeoUEq5aC45GFflSABE2HaGdLPPb84el8IAxN8n5HeEEwxoPBsQu5/bB1TVS
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2351.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39830400003)(396003)(366004)(376002)(346002)(136003)(66946007)(66556008)(4326008)(66476007)(8676002)(6486002)(41300700001)(316002)(54906003)(86362001)(478600001)(36756003)(8936002)(2906002)(44832011)(7416002)(5660300002)(4744005)(38100700002)(38350700002)(26005)(6666004)(6512007)(52116002)(83380400001)(186003)(6506007)(1076003)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?mYly3KqfXLF9AKvAXwgPuHXI5qwbrbaUx1Pld9FuKFPJEQdAieaVK8Ua0HvG?=
 =?us-ascii?Q?GQJuRFbCz/xbYWG37ec5U1O9Xzcc5SqYnJAGn/6rouQh3ZAWQxOzVIpzrsnb?=
 =?us-ascii?Q?ZTw6DnFUwPKrN97ozwbS/EtWXMyvvBYEmV6fFTrSjkqLEleE7WCzcUXuGamb?=
 =?us-ascii?Q?AbSwuoRiAtnEc+6GFYNgDfCIQyducvCVQ9nEnnJdF+yDJjnzY3bVv+tCSBd5?=
 =?us-ascii?Q?Bt9exZ+2GKnTEU0Cprhsu8Igyd99d39eDgYwEDMIo7DktsITvkG/ALCb8uQr?=
 =?us-ascii?Q?DjVPzG4Wi0SjbFAbKnuBACJPnuljnSHCZKKij/jE4tyEK/H8vajEi1QUnbCi?=
 =?us-ascii?Q?VNc3rDO5BTMTDqqqfw/s0clZ0qrXTx5KJOAcI6yf8XpR8vh63oV3uBB6fMFd?=
 =?us-ascii?Q?Fey9DHKPodDZ/bACwhh4RtVS5fdrow5Wh7ZgHIrlUzwk4wMw54XYW6F6SWty?=
 =?us-ascii?Q?wdjJwCxQrzTHlCpzta4y9DD71rApQ9+aNPYQ91qmooXoUJQQC6arOkA6D++P?=
 =?us-ascii?Q?E1CfSyr7B0bjRT1RlLWmjbQ135pdtYWPRL5n6tRdJYwswL9noUXPEt1IV6QV?=
 =?us-ascii?Q?2L226suaimlMxhxuVH1Nyg7YpIzimP7xhPePUJREJ7pOxJOWkJQbdVDVH5NC?=
 =?us-ascii?Q?rquL8Y75be5So+9dwfRWnXZuDcf+iiwE58PaRn6BJ0BGosnYFXb/E+8sT07S?=
 =?us-ascii?Q?5yb1eDUePOqbqalbRksJ83JF+FJBHm0rZpX7U+BaE87y2PldGHmFobFkE45S?=
 =?us-ascii?Q?8dsC5h12UDlCSJmBs31PRv8DKVOBmiT/MdtC3PjCzCbMFlU87jMe+OE27pG5?=
 =?us-ascii?Q?ymyYt4pjkWeyxnFW3wtx+uWLZ3qr62Z0nsWcgO5ngl3mYItQ0yWXfGwUM3Vp?=
 =?us-ascii?Q?oHHybYGYmA+OdpZZlCwvLL0rX5ZchgAtSRkOpRNPajqbzRl7sXTfW7cOAMNz?=
 =?us-ascii?Q?hN//slVI7BRjgIJORjgsmNp5HHlA+G+KlucghnJvaUzGaKjFhIRrDBh5JhBn?=
 =?us-ascii?Q?cJA/+SN8r7V7y2nrDwaRoVECgLsnL5RtVzUSkif4RGQO+X+2G9KHnP/arlEQ?=
 =?us-ascii?Q?VnIXLF6TlW9AB8d5Jwrz3MjWjw+qHEzL/7/kFWynQ15mjsNecAlutqeuMGfI?=
 =?us-ascii?Q?acyjiPrnY/8FJhIWnwgkoAt8JEG/PQRR3a8hDwVU0sVqikfcZd9f0NwEhELJ?=
 =?us-ascii?Q?kUAFqvuaadMVHjaVk7zPR7UwJS49DgtNa75MTiC+o3cmOnI5BnNR7Xc4OUnB?=
 =?us-ascii?Q?uPWEbCJZ7jCOtdz+uY9vN2Mh3R+Kp9AL2Me7zwzJhLJKY+so+A55RF6CGVzt?=
 =?us-ascii?Q?+e3Y+NQ0bovIvZQ+bAHSehk8eC9KRrQKGYqfraiBgnMtSG9X3qqIZEK5ds3L?=
 =?us-ascii?Q?kv2h2BwtyT6pngFZ3M3IC+fDvDyTooWq+eDPagw1O+hwoq6+lDz2iITu0F/3?=
 =?us-ascii?Q?bpaL/wLqrnGrCoc1U3xIPK9oDSJIzL/nJr7vEXEYMPMy+CQhPlhPX+UsIIhr?=
 =?us-ascii?Q?bJpHPyL1jIJbO7sWw8qKx8L9FRW5VMtKiXxPzMWS5QIwSZyQBPN5JfIbx7xB?=
 =?us-ascii?Q?mVXxngPNjMTOc7t6sbDGz+te07CF1i5SWq38Wk8i2jO0uUSV9Gk7y54Fi71S?=
 =?us-ascii?Q?Kw=3D=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e4fb3d9-8fae-4282-9098-08da9413e984
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2351.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2022 16:37:27.2696
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yVHE6K5tFK8hMLo/UtWv6AL9KsevT7hVFOSj44obDCg4oeCeqfpItEQCtZwDgOPusTNzqUmLmNZ0BwFhBedrNbN4lKNm5b0zeznJZR1BAvY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR10MB5331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_093734_152251_DC7F9779 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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

Work is currently being done to add the phy-ocelot-serdes driver to a
non-syscon configuration. Doing so will require updates to the
documentation.

I can certainly wait until that change set to submit this, but I feel
sooner is better than later for Documentation format updates. Also,
those updates likely won't be ready before this next merge window.

The only liberty I took was adding Alexandre and UNGLinuxDriver as the
maintainers, otherwise the content should be the same.

v1 -> v2:
    * Implemented changes from Krzysztof - see patch for details

Colin Foster (1):
  dt-bindings: phy: ocelot-serdes: convert to YAML

 .../bindings/phy/mscc,vsc7514-serdes.yaml     | 56 +++++++++++++++++++
 .../bindings/phy/phy-ocelot-serdes.txt        | 43 --------------
 MAINTAINERS                                   |  1 +
 3 files changed, 57 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/mscc,vsc7514-serdes.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-ocelot-serdes.txt

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
