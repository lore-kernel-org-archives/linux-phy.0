Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F676CD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 12:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnrN5kXRF/igLbsNYfkAN869k9fLeWwbJwFEV+Jg7zU=; b=QTf3R73Jno8wyv
	gTv3Ni6lQ1OUEpi7RzhpDKPQgabJndC6K85OYYu72GQzQlwiHDBJUTJqnxJwOoNp4FP+qG+6HjPJD
	lo1qo//+aC4zVAcAt02OT6jinM96Wc+N9fSx6Aev8Xh5cxtQmRT8SGw0R2Exv8WZhb7Z2zCBj4/WW
	DveuW93VXjGSJX3ZxeM8Nc2mjFRFZih8HCceLnJAdD6Y9flqZSJx46iPNh6xlD30wq8Xtzz7zP2tf
	wQgMoTsZrkoJ121VFpUxv7+l7kacYP7KysnmpMsyCVf/fCWtj+se8qK87vpf1XpS+hZyBTuFbm40Z
	MZNhW05xvrwJqWLi985A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5Lb-0000000BHJp-0vor;
	Fri, 26 Jun 2026 12:07:51 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5LZ-0000000BHFJ-04l9
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 12:07:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782475670; x=1814011670;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=4JROmK2PycA3Po8wq7wUomuZ6GaPNh8ogXQlIHz53Nc=;
  b=aMQh59bfwGedV02CvSE5E7xsbJVJZvchj9BQW8JrVeaSThiRqs7XTCxo
   9XIhyzbxhDP1y3H9jaVfxIhYabwR5zzTJ9qr6qIlHuzjMMt6s4MYKAJlt
   xqFptteUAv8yU/oieVJr/If5nh+pI8AS6TTlqMTcg873ijb1Pmbcs8iFR
   lp+1I4CZPiqruMd24oI8CE/0Bq8gyJI0/wMl/GM6tWwMqVaX+2Qxp1sSz
   TlN1rCZfblSkixuwb4d4qYaoPsf+viEIo4ighL4o+ncdFL6AgXo9v+Uy0
   hNTPP0Ag3JZ0HE2BhDfj6hlRHwpuUl48/IM9udXYL4KIQ53daKEpF/Oy9
   A==;
X-CSE-ConnectionGUID: 3H92T5ctRMyS1D/hRtIBaQ==
X-CSE-MsgGUID: /oCryerdS2Wl0VjNo1RULw==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="100697940"
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; 
   d="scan'208";a="100697940"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2026 05:05:48 -0700
X-CSE-ConnectionGUID: 3N/fWy8IR1mqPbUQqqoKog==
X-CSE-MsgGUID: jkc9iYFeR+uMu49G2y7aQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,226,1774335600"; 
   d="scan'208";a="251971975"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2026 05:05:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 05:05:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 26 Jun 2026 05:05:47 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 26 Jun 2026 05:05:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/E0FNWMXYelo/cg9cisJGQCUZIhNI33Cnex9B1XBZRCnezcuxO0TsLLerc8I8elLsUCaOaZn528EbFco848aCd3Ye63dXoKzREFxKt/Rwjhq5lSow0e9fJcluvwxHQLwDwKi3cbGxMJ093Uv9xe3N6r/8fPK0QLw9J4xKkqYUZqe6GFXfdmySDvPfSsuhBHMH3o0zt1Y8qMq8QIkqMZ9N3+D+lpSOGhqNsl6Yl/3vOVbDn01vxeuMPqmE01Ev4J178i9nPEHb0XOBIJPCp9Bg/qur99nxrLd6BiKIBcblh81rmqVsANVEe2kZqV8c0ZAtL4yW4tImNNyoLPjU0/+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f3JAz2xP6Eky2wy9bQEr/u9S5/LhNijrSpww0h0OKTQ=;
 b=RAq3VqMuLPK1jUbg53UpQKtiFVLPkDo42UoSl2lFkV5p+U7+T+uhZFuX7bDv/p0VDLdzWuBfl8ugApldXWcaJEzNvhKhwRkfgmRejij7oPqeh2PSjqKDZA8IA7FWFgWp6FCXq+f95b82K+op38yb9uA3M48jSUJEEshHKiwF/a7cJ4CZKbY+SLLf7gZcxtK4z7r8YxbqrEHIH/ZfbuHWUcuzh5OMuKsf9TRpbH9fbS34Q2nO5cv9JQRrheDWT89lAHrIEIaY+ZWb216O7DgEFLh8BLUf2HReP95ZkDXQrVRG8ov+wd5786Vv3s605zKeVlF4hawzvhmC6z//5kqO9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2556.namprd11.prod.outlook.com (2603:10b6:5:c6::10) by
 DS4PPFDA283F46A.namprd11.prod.outlook.com (2603:10b6:f:fc02::54) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Fri, 26 Jun
 2026 12:05:42 +0000
Received: from DM6PR11MB2556.namprd11.prod.outlook.com
 ([fe80::ab22:139c:b0e5:20ac]) by DM6PR11MB2556.namprd11.prod.outlook.com
 ([fe80::ab22:139c:b0e5:20ac%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 12:05:42 +0000
Date: Fri, 26 Jun 2026 14:05:33 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Petr Wozniak <petr.wozniak@gmail.com>
CC: Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
	"Heiner Kallweit" <hkallweit1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
	"Paolo Abeni" <pabeni@redhat.com>, <netdev@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, "Maxime
 Chevallier" <maxime.chevallier@bootlin.com>, Bjorn Mork <bjorn@mork.no>,
	Aleksander Bajkowski <olek2@wp.pl>, Marek Behun <kabel@kernel.org>
Subject: Re: [PATCH net v4 1/2] net: phy: sfp: free mii_bus in
 sfp_i2c_mdiobus_destroy
Message-ID: <aj5rDatKToGXAVD9@soc-5CG4396X81.clients.intel.com>
References: <20260624084814.20972-1-petr.wozniak@gmail.com>
 <20260624084814.20972-2-petr.wozniak@gmail.com>
Content-Disposition: inline
In-Reply-To: <20260624084814.20972-2-petr.wozniak@gmail.com>
X-ClientProxiedBy: VIUP296CA0160.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:35d::17) To DM6PR11MB2556.namprd11.prod.outlook.com
 (2603:10b6:5:c6::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2556:EE_|DS4PPFDA283F46A:EE_
X-MS-Office365-Filtering-Correlation-Id: 896cd8e7-dc90-494d-64ef-08ded37b3ec9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|10070799003|23010399003|1800799024|18002099003|22082099003|11063799006|4143699003|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: /GABgU2YDQ0QCrme+FkKmnpANNmFTDUSgGsuLdi/dFkwhgeMA3F/ADo0FlIu6HgFhU6BOLznMdh9HVOT3y/AgYt5O/gZ1q3l9NzdI2UkTOaF4OTnd1h81dTxLe00rtsIMNursxk4Erpqcx0rc0I6WeJotLNFUEz8t0PVeXTnRiLNHAGhuwhd+YKSFh1Tigbix1f7RzK9I5/5+YXK/1ngF74nct/AycB38Qg6CddwrbkG5DgvsidBemznSIQ75zEFJACMPL2OQOtRdW8Pli/EPBcA3LOm0dXRp2zF3I9uD3o13rEqGyiXnNCF1WQZ5b4TNWRS/Z0GGrZ58q8gZt13QXypVphBT0MN91X+sKH8UKmK2Al0azMD8L7HgN6GKtdtDReBK9YfPYSdmFt5g40ce35nYydXyQspDdjzjZFdY4qDPzdRUu4xrRkpQUNqzpNbCBxd3PUVi2UDrjuQx5PmwvxZlb/rqDckIirNWzNGcvyv1evV7e97TgrLvb5RdDFriF8LzoDgoAiahO/XE2q3d/8nlRo2wjE7j/tTUu02tsK73sm9CDZJR1o05FStbuFCzR782vZqj9zCrgsIKfh5HtgzA4E6VOkjXvvokT4xmCf9jlX3Ccd1i0EvF4tOPypprvfA8MBx8fcyzIwLgF+o76ycIWH3IfkCqBXvCR7xkds=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2556.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(10070799003)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2QgaS4p1Dh8lT4OGC16n+zVtLcaDBzEN18V65kyIWaOU4o57COM9N4qwyr7K?=
 =?us-ascii?Q?9OnPP0DhjEXu0maY4Q9ZJnCmExgc37PVmkxe3DOiRzKuwzpvzw763Tef2MgB?=
 =?us-ascii?Q?RihGzL9k2ixjji4d3P2PPOSweA33s4ADULv5xpYJ0JoR84xh56bYkPtn/Jgu?=
 =?us-ascii?Q?srcFYvP/VFSYgLfjC+5pH5/vZxdjpetYZ6ps9ukR3PmOjT6/+jUY4rWCnE/t?=
 =?us-ascii?Q?McWZt6bFy7jTd1dX8j8t2P0oiISHrzWSmhOhwPAMAsqg/lS+95INg9ZTck8h?=
 =?us-ascii?Q?fieota0e2pXrfZjH4iW2VEeY972Oz+YON8Vikb1j489RvVH00NQmd6oDNGZL?=
 =?us-ascii?Q?uP6OWdb5QY4wShFwv1QMRKsH7kbyOexxGGHb7qnLHdurWPA/xDAnODhIvyis?=
 =?us-ascii?Q?tUyJeVEFIWj5KNK84axmfegPtZLRIjN7T39YhTkXSbk35pm/7nEwEd3tbeAZ?=
 =?us-ascii?Q?3XMdWcmkIkHH1KphOwcWWicZ97LYbFPSV+t1rdfgqktxv0UOyDzhw2ZdkD7D?=
 =?us-ascii?Q?R5dTcdmZXRyGc5gjTm/VhNJ3JqdZnSKZL58ZN0fERrKvfYlg8CaqVcPNmcnJ?=
 =?us-ascii?Q?4QicO6/2gplp+z2igehiW0VsMDfnZJY8xxWtb/+PVuvaRIXx8kMnV62LT+Bm?=
 =?us-ascii?Q?Orm2xGJ7jKs0wDjxoC7IhT/NFjG4xEAfKBqu1Bs8MqEYm2dT48eRreFBc6Zk?=
 =?us-ascii?Q?jRoowOU0C5S3KOstV7FvpqsT/VIfyq12hW+Rq18UUyPWm6cULcqV70cym2BA?=
 =?us-ascii?Q?cBtn6nTDWWRe8DYahumpMbgcZILF1RqUGbTYmy95GcYBA4sU2eBdwRNfB0We?=
 =?us-ascii?Q?Funnx49QmshzvylW9X9Mp+vD3WmnxKILPxgQu5hA9XMvQynEyxmpaIjYxmaB?=
 =?us-ascii?Q?qXke+f2Mr17BHH0i/EhuEO2YRKYOT8q/oiIM0BEtEvmmvMUsaNkC9ors4FAI?=
 =?us-ascii?Q?eT/L0qBqmghDCMksEbfnFr9AMfcqouRbUkOZhdjFjaFMsABEObTZiKe3dJcv?=
 =?us-ascii?Q?+sGjF2r/7pibnpHwAOrRfeZZZEaUEivmV1U4r5Xd1cJovqiUPwJ9tQGD+GkB?=
 =?us-ascii?Q?xK0Akc+e+Slc71Qs79QQoqMKzoMjnOGLbh85px+N1ZLx9/e7meNlurv23DtY?=
 =?us-ascii?Q?/Nj41H73/Bg/zfQTPo33Xv7p6tXr0XLgzXAAARABebimtmlxeJNx8X7qloP3?=
 =?us-ascii?Q?d/eoRVRhZGxJu0eErQYxZjjdKoFLW15S0CHpXXNWL6YHAGajVKJm82dUDUSH?=
 =?us-ascii?Q?MwpduSqdBuwEmosOFf3BzpYKK8JCh1m6oZK7LxV0OsyIDm9uS9jvv2Q53AQ8?=
 =?us-ascii?Q?wsziLIvEEDiAHeOyPhoNmiVUXsse6GAwVx9aQ8Klf+dY6MTvZY1GADwiKGrU?=
 =?us-ascii?Q?czrUS55M0SvtcutmYo9WS1GBuyTTYNlOJWRBS65g08Nv/eu9Qi6Ia84v8LB3?=
 =?us-ascii?Q?OGV22PInfGpliKCPwOJkHhSstbDo1wUlm3M8sqgf+1VKdXopzvTgL3QOoxHP?=
 =?us-ascii?Q?jqcGbIhQke0b+KScMkL5R5nBngR0RJwgeQY2ONfZHTDf2G46Gp9ZKaQljiZ4?=
 =?us-ascii?Q?KJB00r6FDtyrRUXVRrp5Ur7w+hy2eWqFdOk+gPWSN5cxcyV8odwpDQ+PwtJu?=
 =?us-ascii?Q?oo/X4a0e81SZEMuiG2RLPlpjRReF/6LvItJzR8pkfVMPlt9xKT9HOT19ZNsH?=
 =?us-ascii?Q?ibO2TUKO3IJro4W92LuoUTOJ/Sl8OPuFJOxgCxl1130Rg6cLagMJkz+Sf3YR?=
 =?us-ascii?Q?F4an/M3pFvh6BzFQI0WEQeKzgtog4yKP42oqxk4i0FjvW/P/FMEhTZ+TQh0R?=
X-MS-Exchange-AntiSpam-MessageData-1: vgYLTZwqIshs809v6S6rN+L9uohcKbmtGH0=
X-Exchange-RoutingPolicyChecked: YY7nw2yYwuNscPU2Awb17mAHCaMvOo3qZ+3M6baEgEys36HcmZSZXV6+ZeIn/DZP/306+Tqfzncrk6cDA2u2Jn1lKsXn7NoXG44I0DWJ8hT/rd9j4NkOfVZ0eOyxzpSy9nwFNIShWMHXjAmzFzNQcAZUo36PzBRHQo3jLGBZeehh4P7M+QKIaWOfHUgBcA9RAJDEtnFTYZmtDtFn+KWpr5zzxyHse08Gma/mJaSSAwdwqQRPctdTrYtVzaDQ9t1Slc66czKa6Q6HAAJv2AcHyIo3boUsqUdE55gRHYHBSZ6rr7tbmb5uh2ZZ0SfORlpvF138NHWAGU3Q0RmfeMG4Ww==
X-MS-Exchange-CrossTenant-Network-Message-Id: 896cd8e7-dc90-494d-64ef-08ded37b3ec9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 12:05:42.4212
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L/F2lG1d1tFXl2sIzvUyIv6VHCEJXL3mM4TdCzR4YSxHhTdYZA2fh3lrL1ii3HbkL0+mCpP5ey/OQuAFy+7CVrpUCrXjyYr2WJrz0RJQbxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFDA283F46A
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_050749_120185_076242FC 
X-CRM114-Status: GOOD (  18.01  )
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

On Wed, Jun 24, 2026 at 10:48:13AM +0200, Petr Wozniak wrote:
> sfp_i2c_mdiobus_create() allocates the I2C MDIO bus with mdio_i2c_alloc(),
> a plain (non-devm) allocation, and registers it. sfp_i2c_mdiobus_destroy()
> only unregisters the bus and clears sfp->i2c_mii without calling
> mdiobus_free(). As the only reference to the bus is then cleared, the
> struct mii_bus is leaked.
> 
> This is hit whenever a copper/RollBall SFP module that instantiated an MDIO
> bus is removed: sfp_sm_main() takes the global teardown path and calls
> sfp_i2c_mdiobus_destroy(). sfp_cleanup(), on driver unbind, frees
> sfp->i2c_mii directly, which is why the leak only triggered on module
> hot-removal and not on unbind.
> 
> Free the bus in sfp_i2c_mdiobus_destroy() to match the allocation done in
> sfp_i2c_mdiobus_create().
> 
> Fixes: e85b1347ace6 ("net: sfp: create/destroy I2C mdiobus before PHY probe/after PHY release")
> Signed-off-by: Petr Wozniak <petr.wozniak@gmail.com>
> Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>

> ---
>  drivers/net/phy/sfp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
> index 03bfd8640db9..c4d274ab651e 100644
> --- a/drivers/net/phy/sfp.c
> +++ b/drivers/net/phy/sfp.c
> @@ -963,6 +963,7 @@ static int sfp_i2c_mdiobus_create(struct sfp *sfp)
>  static void sfp_i2c_mdiobus_destroy(struct sfp *sfp)
>  {
>  	mdiobus_unregister(sfp->i2c_mii);
> +	mdiobus_free(sfp->i2c_mii);
>  	sfp->i2c_mii = NULL;
>  }
>  
> -- 
> 2.51.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
