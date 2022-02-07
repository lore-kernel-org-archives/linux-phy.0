Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72824C43217
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 20:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izR/ThWHhw4XBm0G+O82Da6lWUFAt8KAPU7x9nEpyE8=; b=VXf5MhvdQ9bWwM
	h68CE+Rd6coQLZN7zPu06Y46PWbJAFUicmbS4/ufgeOyLWrGCCf3R9qZe9Tp4PPFVr4TNm8cmbywQ
	c+NUBjVz3IyfS6re3N7cTRdi2tKZA9eOZ8Ky1u2iOn/p8+2taAPzWLzv82KTHg2KDzBfz2wfGgRMi
	GJyHdzqRE++w/Wj3VsvhCt0ZoyVy6+3KtYWodhMTxKOSepIgCv+Zg0SM7QcWtjmBzSjF27NtzF+rH
	AhWRHJqzR4+ax1Pm9vhMAAoicAbup7+7SJU654+Chz+foji7kmDr1kiYoQFTJ/lkL3/oKxND+9KO9
	XNH2o5nVvRZtpmPKW6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHAf2-00Bgve-Tn; Mon, 07 Feb 2022 20:30:56 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHAf0-00BgvJ-CI
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 20:30:55 +0000
Received: by mail-oi1-f174.google.com with SMTP id ay7so4390879oib.8
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 12:30:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=M80jk/mTnmzTCyOAgobT1zJYrEwWUPQbcvoyxfMNQ0k=;
 b=jnjMLZSqKVs10WVFSiGIceuoMcd3PlWyCPbypL9qZqub+gtZ+PHBd6hdgArqHBx1on
 fsW+dBB+CRAUuVdb7M3r64tYeMN9Hm+Sf3/ynqQOH75UzDMJUulOTofw+m67rrBhiEYL
 NJ52JLysLDGGfODGqBDT8yz7sZX3DGTdXBQZNEDRtPvog/rVpmxyrmVFMlEKvbrUe9mX
 KLnXWGi62Htuhr4CiJL8llecOZyfL5YCSn26GVw1yFPyOH1H0JKTuan5OX5PTV9gbHxb
 JNP8BXPXb8oNVxs9yTraNyimpoYm9REPRoecGaenKvhsCdKJF6IM3kkyUORMISNrNyVE
 lXMA==
X-Gm-Message-State: AOAM533fvInFVauP61g0VQDlMefHLgBnB1JBvF9I63qWkqJ9VrIOg5yD
 Na3E+kNK2jnIUIO17k2ypQ==
X-Google-Smtp-Source: ABdhPJxrtjY8DN4oMg8J59VZ53F3yuhMoNXTZzes8GFgKwzEEiGAyqNyAURzasKssSKB+fI+cBpThA==
X-Received: by 2002:a05:6808:1513:: with SMTP id
 u19mr309040oiw.205.1644265853047; 
 Mon, 07 Feb 2022 12:30:53 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bc36sm4343256oob.45.2022.02.07.12.30.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 12:30:52 -0800 (PST)
Received: (nullmailer pid 855870 invoked by uid 1000);
 Mon, 07 Feb 2022 20:30:51 -0000
Date: Mon, 7 Feb 2022 14:30:51 -0600
From: Rob Herring <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vladimir Oltean <olteanv@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, devicetree@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Vinod Koul <vkoul@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, Holger Brunck <holger.brunck@hitachienergy.com>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <YgGBe0BS/d0lOVtU@robh.at.kernel.org>
References: <20220119131117.30245-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119131117.30245-1-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_123054_467105_9AFA665A 
X-CRM114-Status: GOOD (  16.45  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 19 Jan 2022 14:11:17 +0100, Marek Beh=FAn wrote:
> Common PHYs and network PCSes often have the possibility to specify
> peak-to-peak voltage on the differential pair - the default voltage
> sometimes needs to be changed for a particular board.
> =

> Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for this
> purpose. The second property is needed to specify the mode for the
> corresponding voltage in the `tx-p2p-microvolt` property, if the voltage
> is to be used only for speficic mode. More voltage-mode pairs can be
> specified.
> =

> Example usage with only one voltage (it will be used for all supported
> PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> case):
> =

>   tx-p2p-microvolt =3D <915000>;
> =

> Example usage with voltages for multiple modes:
> =

>   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
>   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
> =

> Add these properties into a separate file phy/transmit-amplitude.yaml,
> which should be referenced by any binding that uses it.
> =

> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> ---
> Change since v2:
> - removed 'select:' as requested by Rob. Instead the schema should be
>   referenced by any binding that uses it. This also fixed indentation
>   warnings from Rob's bot, since they warned about lines in the select
>   statement
> ---
>  .../bindings/phy/transmit-amplitude.yaml      | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/transmit-amplit=
ude.yaml
> =


Reviewed-by: Rob Herring <robh@kernel.org>

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
