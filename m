Return-Path: <SRS0=hDbK=JN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E011C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 12:09:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EDA261184
	for <linux-phy@archiver.kernel.org>; Fri, 16 Apr 2021 12:09:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EDA261184
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ass8ofBpqiATdAY8ydHOYMbq+6WP03FsylwKV1fjAI=; b=ar5S4W0zJ1QktYGGuP8dyUxSL
	NfRrrcR5lcMrlFaUmfPCAJ0hlWWEMD914PklT47RHa5+82Glkfycbp+jdPJvWfszTpCwFdrX8rPxF
	S8Wp+HrlB4Le+CxMqNvV4uZOH1nZKlE87Xf1FPk9joSoGm6npxDgMdp9pFcg8T2PBWM2n1cc4i+d6
	iUrBnAUeZULKlZbbwiPNPpG5lIp5d63Z+B7pWvzBvePfq1ES+X3IBi9p9y+GzcJv20XTYw1ST42h7
	zpOFv2DbVveX2+5sTk9FLagnAP+wscAVV5LE4v3K22QGoNZYAarAppMzXcNIrOLj+BmnYYHdyQYFV
	/WA3Ga+9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXNHo-0021wi-Ik; Fri, 16 Apr 2021 12:09:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXNGd-0021lS-Ms
 for linux-phy@desiato.infradead.org; Fri, 16 Apr 2021 12:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=PUV6AwwaztHqsx25qobpgoCZp2N2b9pNDsdbNFio734=; b=tgDmkawSk9l9lsOuZJ56D8+PTr
 Me7+5/an2RtkUe5XQnJo6hIPTKsaG2bEuRPEKwxFMNaokZkoT3K86xnSQQhoMevvF6WyAUtM1NSVS
 PxYWmJB7aQg6CjexzP4V43zD6kGtYDmsswmlz1exRhBjK/Knm/j819WMUi2yPL2NFiZAIPYGcbV4Z
 LmI2xtUpjgw1IwpULRVNYEkJoaMfHSzr8LOopjrxWmAGGhxqKJ+TA2o/hL1I9j35CoxoHrcqXTi2+
 o+rREyrJzUt7b3rqR5NF34pjmCRhv5IlP3IwDJ0gNWAKxoQ5GKnfbFIKraKAa6hFVMAHUUcWFLkdL
 ozFR6OgA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXNGa-009LP7-Jn
 for linux-phy@lists.infradead.org; Fri, 16 Apr 2021 12:08:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1lXNGU-0004Zs-9v; Fri, 16 Apr 2021 14:08:02 +0200
Received: from [IPv6:2a03:f580:87bc:d400:b21a:a98c:8cd:ce9c] (unknown
 [IPv6:2a03:f580:87bc:d400:b21a:a98c:8cd:ce9c])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "mkl@blackshift.org",
 Issuer "StartCom Class 1 Client CA" (not verified))
 (Authenticated sender: mkl@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id 587A66102FF;
 Fri, 16 Apr 2021 12:08:00 +0000 (UTC)
Subject: Re: [PATCH v5 0/3] CAN TRANSCEIVER: Add support for CAN transceivers
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-can@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
References: <20210416113058.23815-1-a-govindraju@ti.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Autocrypt: addr=mkl@pengutronix.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8dcf42c8-6b72-144f-b186-d6bb28cb5677@pengutronix.de>
Date: Fri, 16 Apr 2021 14:07:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210416113058.23815-1-a-govindraju@ti.com>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_050808_836690_2551D4A4 
X-CRM114-Status: GOOD (  30.85  )
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
Content-Type: multipart/mixed; boundary="===============7141838577047945888=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7141838577047945888==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ZYCDodkx5pxRulXFKAdXo4rocwmHbXO3k"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ZYCDodkx5pxRulXFKAdXo4rocwmHbXO3k
Content-Type: multipart/mixed; boundary="36PK3UsOtLF8VF4ZoWATJG2EymWUksaQd";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-can@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <8dcf42c8-6b72-144f-b186-d6bb28cb5677@pengutronix.de>
Subject: Re: [PATCH v5 0/3] CAN TRANSCEIVER: Add support for CAN transceivers
References: <20210416113058.23815-1-a-govindraju@ti.com>
In-Reply-To: <20210416113058.23815-1-a-govindraju@ti.com>

--36PK3UsOtLF8VF4ZoWATJG2EymWUksaQd
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 4/16/21 1:30 PM, Aswath Govindraju wrote:
> The following series of patches add support for CAN transceivers.
>=20
> TCAN1042 has a standby signal that needs to be pulled high for
> sending/receiving messages[1]. TCAN1043 has a enable signal along with
> standby signal that needs to be pulled up for sending/receiving
> messages[2], and other combinations of the two lines can be used to put=
 the
> transceiver in different states to reduce power consumption. On boards
> like the AM654-idk and J721e-evm these signals are controlled using gpi=
os.
>=20
> Patch 1 rewords the comment that restricts max_link_rate attribute to h=
ave
> units of Mbps.
>=20
> Patch 2 models the transceiver as a phy device tree node with propertie=
s
> for max bit rate supported, gpio properties for indicating gpio pin num=
bers
> to which standby and enable signals are connected.
>=20
> Patch 2 adds a generic driver to support CAN transceivers.
>=20
> changes since v4:
> - In patch 3 made the correction from mcan to CAN, in Kconfig help
>=20
> changes since v3:
> - dropped patch 2(in v3)
> - changed the node name property in patch 3(in v3)
> - picked up Rob Herring's reviewed-by for patch 3(in v3)
>=20
> changes since v2:
> - dropped 5 and 6 patches and to be sent via linux-can-next
> - added static keyword for can_transceiver_phy_probe()
> - changed enable gpio example to active high in patch 3
> - Rearranged the file names in alphabetical order in Makefile
>   and MAINTAINERS file
>=20
> changes since v1:
> - Added patch 1 (in v2) that rewords the comment that restrict
>   max_link_rate attribute to have units of Mbps.
> - Added patch 2 (in v2) that adds an API for
>   devm_of_phy_optional_get_by_index
> - Patch 1 (in v1)
>   - updated MAINTAINERS file
> - Patch 2 (in v1)
>   - replaced m_can with CAN to make the driver independent of CAN drive=
r
>   - Added prefix CAN_TRANSCEIVER for EN_PRESENT and STB_PRESENT
>   - Added new line before return statements in power_on() and power_off=

>   - Added error handling patch for devm_kzalloc()
>   - used the max_link_rate attribute directly instead of dividing it by=

>     1000000
>   - removed the spaces before GPIOD_OUT_LOW in devm_gpiod_get()
>   - Corrected requested value for standby-gpios to GPIOD_OUT_HIGH
>   - Updated MAINTAINERS file
> - Patch 3 (in v1)
>   - replaced minItems with maxItems
>   - Removed phy-names property as there is only one phy
> - Patch 4 (in v1)
>   - replaced dev_warn with dev_info when no transceiver is found
>   - Added struct phy * field in m_can_classdev struct
>   - moved phy_power_on and phy_power_off to m_can_open and m_can_close
>     respectively
>   - Moved the check for max_bit_rate to generice transceiver driver
>=20
> [1] - https://www.ti.com/lit/ds/symlink/tcan1042h.pdf
> [2] - https://www.ti.com/lit/ds/symlink/tcan1043-q1.pdf
>=20
> Aswath Govindraju (3):
>   phy: core: Reword the comment specifying the units of max_link_rate t=
o
>     be Mbps
>   dt-bindings: phy: Add binding for TI TCAN104x CAN transceivers
>   phy: phy-can-transceiver: Add support for generic CAN transceiver
>     driver
>=20

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

Please upstream this via the phy-tree, I'll take the mcan changes via
linux-can-next.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--36PK3UsOtLF8VF4ZoWATJG2EymWUksaQd--

--ZYCDodkx5pxRulXFKAdXo4rocwmHbXO3k
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmB5fh0ACgkQqclaivrt
76lvogf/SmPjJuTm0CTqZ8BTKEfDLE/ZyLzxIYwinxzbCDWDnUReMHKNT6grQ1oK
g0UMfp3Skx1hqM/jANtBCYxSZMc/dmRR3SMLUv9aQqrwWZ0HObLfarcTx4fzjLnE
3/erFd3qsBPTScyCLtEvCMfQNf1sZLJ625JRHQRdgtauPYwLjYeFQsKsLLEz6DR+
kluGCSk8SL9N/OQEGjnJ0t6tnyHKWyQTQcu8kzpBPFPGAUdDOeYHVWC90b0BBAch
i0YMikygvvhO65dpRen6q5USY6PmPlx2jvZovdMa67YBpwXbV6PGAmD0cTVSXd1N
rbSehIP89i6wq+nfaAo36/DnqjstwQ==
=yw96
-----END PGP SIGNATURE-----

--ZYCDodkx5pxRulXFKAdXo4rocwmHbXO3k--


--===============7141838577047945888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7141838577047945888==--

