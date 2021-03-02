Return-Path: <SRS0=GGdd=IA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 273F7C433DB
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 09:55:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89CFC64F0B
	for <linux-phy@archiver.kernel.org>; Tue,  2 Mar 2021 09:55:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89CFC64F0B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NLZgncwRWchFWoZngnosY02dCeof6Im4yNMVzjxYkSQ=; b=fhZ
	q7eJJueKfuX+6y28ZJJYIWMxtYCsEuuK77zZlWTSSRMBuDZt40kmPwes6fLmgVlNfQ++bCwPYxfrr
	UIbA7MLpYwGRnTSAAcBOxn0IPLkrYbnzrUvSAumkuVT2LIy3LKVHpJAZzvpeyZAUeJulJnlF5SdvU
	b9+OnyxDQ2BCFyL9Ku42XvIwf/Qc0GmxK8lvqNvE0BsPmjoS1q38xsXtgCKOXOaeXDdrB2UE44aD9
	yqiH9hpAwTC+vU9Cf+OJn87zvhVaSteLwtdSmJ+7yZUAMQASlFSWOcyrCcL7eOks1F0KVOWx+oZLg
	U8fLzB1lj0CJaQeVWbqubWiuz1Uh1yw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lH1kL-0006v1-Rk; Tue, 02 Mar 2021 09:55:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lH1kJ-0006tw-AN
 for linux-phy@lists.infradead.org; Tue, 02 Mar 2021 09:55:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C547364F09;
 Tue,  2 Mar 2021 09:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614678913;
 bh=OzPPIQdrjrgGMYXG2lfqYI46l3thN55RjyGYT0nUeZo=;
 h=Date:From:To:Cc:Subject:From;
 b=uMYhGc/LYWrAd/u9MXYlGt8udEGu+2XoATnHv6jD52WRDflogDw/DqYydhiSnMqQ9
 nEThSr4zsO2zmU2RS3FkCzJ+c5u41HlnxDe6xDGmeIx5Aw2KzRosLvmU7rPHPZD2Mt
 sFti6IB5+8iK66UYRPxM5ZZZVAEayRGWezXgumzAQl3T0Uf5hknTec1WVs436FR9yF
 G1uUu6HN/1I42zjr/ODC9/ob2W+gVancy/TToadPbuzTfkUxXcWdan4cdVQNcntOED
 BnNd/nJExLq0Ao8uVTIIB3Whl9YSCrwLLsmLIeKaj8c9n1BiXAua/K+DrGe3CwAgdD
 xaWVbb8NXbG6g==
Date: Tue, 2 Mar 2021 15:25:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Commits for 5.11 stable
Message-ID: <YD4LfQEXWawk2b4C@vkoul-mobl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_045515_449494_BB75D678 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: Linux Phy <linux-phy@lists.infradead.org>, stable@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: multipart/mixed; boundary="===============1735067068402584139=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1735067068402584139==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v+XQyuDVIc/t+ilV"
Content-Disposition: inline


--v+XQyuDVIc/t+ilV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Greg,

Please include these commits for 5.11 stable series

9a8b9434c60f phy: mediatek: Add missing MODULE_DEVICE_TABLE()
25e3ee590f62 phy: phy-brcm-sata: remove unneeded semicolon
6b46e60a6943 phy: USB_LGM_PHY should depend on X86
36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable
c188365402f6 phy: rockchip: emmc, add vendor prefix to dts properties
88d9f40c4b71 devicetree: phy: rockchip-emmc optional add vendor prefix
aaf316de3bba phy: cpcap-usb: remove unneeded conversion to bool
39961bd6b70e phy: rockchip-emmc: emmc_phy_init() always return 0

Please note that below commit is applicable for 5.7+
36acd5e24e30 phy: lantiq: rcu-usb2: wait after clock enable

Thanks
--=20
~Vinod

--v+XQyuDVIc/t+ilV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE+vs47OPLdNbVcHzyfBQHDyUjg0cFAmA+C30ACgkQfBQHDyUj
g0ciDRAAictXR70UR2JkSKLskHOxJkYiK4Ma7YkyG54+eBE36+jE14p3T2GmuCyE
oU7nOQffauoyqdONOnhBRxinNg41hGQbxIuTTreS92CWD53+6VgU0ka+CB0thsuA
+HfM8oTtMs0FDlXcVd6D1QXZEKaEyii//V4XSHNC8VwtdqadKXusl0oKnJDrEkeC
hWCj8woroGOYaXiAfBvtv/OMgcGQ5FJRqXw6dZEEdBMxKjkgw6sVDdOmylvmBpin
4ppZhTERP3iWmMoyezgagXMJRPDxS0wvMU9ID9NegDQuMsrVG9YwxzOeelbVPTQe
PNXfID/GS919TEoaYZkizJsl9REWz2KlREXrHYzeBUZxPUuPB3QV6aJl37uoDJSX
SIIC0A0mLeK8kRkGcFDK3E4koCt8fqfmPxtOPbiK6iPTSDpR+QjUrpSCsrrXAJZZ
FRrzoBqFoDfAlrdQjmp4pxz8a4fCO8xlaeYeYe+6QL7XyaiiPydhGV8raLCg1oJv
mOheNafQ5CsClzohZtWlfO2ZmqGwASnRGFPsAGnUfneRzm5eHkjXAxoeWdPkocX3
H1du1jv2tYKr5//Ck4/gtsYg0aWDR6tzZMazVyb2ehxmbfDRP34+ENAn2tAUCDoz
+mqj3+rW1Gk9NVZcHAUdP+1nSMufQJITEn7/XS0fiL0pFeEelz0=
=Vqll
-----END PGP SIGNATURE-----

--v+XQyuDVIc/t+ilV--


--===============1735067068402584139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1735067068402584139==--

