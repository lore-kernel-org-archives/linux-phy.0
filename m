Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD18F606A323
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=u1bKl7CV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=dolcini.it header.i=@dolcini.it header.a=rsa-sha256 header.s=default header.b=nYIwTd1T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r6TdbdlHCZeBrOU04STmmM0xtkNH8nu+AGfGt3RyCeE=; b=u1bKl7CVTBZlaCiqiDHJQxegjg
	8uSA+gChK7EJ9XfE5i0C90ZQwBurBYCYvF8YfyvjYM0TeIJwysoXOSZGeNdjId/M+hebpjTMC7bA2
	ozhuUeymtJwv+PEU+gCinYmtEJvHu9KEv6HcDuViCad/oJngP31z5y2k7D3NMBLxm54YZWosqxZOH
	uk6PFwDEWd/vMIOIsDnqdZa+Z8GhGqOB6FA1k54J0+RWtR8/44dC8Zm+r2fwkn14zLCi6yQWp37qc
	h7Rt1zkXqNVUzLKsxaleXC7/7wvl2wDC8mrRSyTMlUOqLwqrH61B7eXrZatOTJEc17cSvevzWPYPM
	vWfg2NWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRRN4-00000009Pvx-1qaZ;
	Thu, 12 Nov 2026 09:45:30 +0000
Received: from mail11.truemail.it ([2001:4b7e:0:8::81])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRRN0-00000009Ptx-2baY
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:45:29 +0000
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 038901FB1F;
	Thu, 12 Nov 2026 10:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1794476719;
	bh=uKwkGpbKTSm+TeC+5PE4mVU5+tF0hJnI8MkhBwgF5Is=; h=From:To:Subject;
	b=nYIwTd1TXIHzMzyjHUt6ACpVqDRCGfeI3oXz1tIdjri8GqMNB+v5D1HAyRabie0V/
	 JRUaLA0OVVPSW1Sb+6IM0MZXNPv/QCMNanBGHX3iABB5ccTtWB7voffjip+Gvt3Bty
	 8S91W3X7zqfdvc58FcBd6HL7JlA6qphkaKLRPsuaFbnHFrHZWIJQLeHYN4i8BKlKJe
	 Nn/EJ8eJFihGH0bKk5HSOwE3GPQ55ccioJYFqBJwAeaJfg7tSt4LFpDSImsNOyk2OD
	 +hW6Wouyfgh1FckyEwan3n9ArSga7l7TU/eDwU2QNh/97YDg6Y4ED2psE7dUAXegO6
	 r23KhXIseXyUA==
Date: Thu, 12 Nov 2026 10:45:15 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
	regressions@lists.linux.dev,
	Emanuele Ghidoli <ghidoliemanuele@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
	Aristo Chen <aristo.chen@canonical.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Fabio Estevam <festevam@nabladev.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] phy: freescale: fsl-samsung-hdmi: initialize default
 rate
Message-ID: <20261112094515.GA47236@francesco-nb>
References: <20260903054811.9720-1-aristo.chen@canonical.com>
 <13219248.O9o76ZdvQC@steina-w>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13219248.O9o76ZdvQC@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_014527_705598_D08FC026 
X-CRM114-Status: GOOD (  14.91  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

+regressions list and Emanuele

Hi,

On Wed, Nov 11, 2026 at 08:11:39AM +0100, Alexander Stein wrote:
> Am Donnerstag, 3. September 2026, 07:47:58 Mitteleurop=E4ische Normalzeit=
 schrieb Aristo Chen:
> > The HDMI PHY clock reports 74.25 MHz when cur_cfg is unset, but does
> > not establish that rate in hardware. The common clock framework caches
> > the reported rate when registering the clock and skips a first
> > clk_set_rate(74250000) request because the rate appears unchanged.
> > =

> > Consequently, a display whose initial mode uses a 74.25 MHz pixel clock
> > can leave the PHY with its bootloader register state and receive no
> > TMDS signal. Requesting another rate first avoids the issue because the
> > set_rate callback configures the PHY.
> > =

> > Program the 74.25 MHz table entry with the reference clock enabled
> > before registering the clock provider. recalc_rate can then report the
> > configured rate, and a skipped first rate change is safe. Also enable
> > the reference clock when restoring that configuration on resume.
> > =

> > Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
> > Signed-off-by: Aristo Chen <aristo.chen@canonical.com>
> =

> Unfortunately this breaks my platform (imx8mp-tqma8mpql-mba8mpxl.dts).
> With this patch applied I get the following errors in kernel log:
> > fsl-samsung-hdmi-phy 32fdff00.phy: PLL failed to lock
> > fsl-samsung-hdmi-phy 32fdff00.phy: error -ETIMEDOUT: failed to configur=
e default rate
> > fsl-samsung-hdmi-phy 32fdff00.phy: probe with driver fsl-samsung-hdmi-p=
hy failed with error -110
> =

> Reverting fixes my platform and HDMI as expected.

Same here on v7.4-rc2, on all the Toradex i.MX8M Plus boards in our CI
(Verdin iMX8M Plus on Dahlia, SMARC iMX8M Plus), with the very same
three errors.

#regzbot ^introduced: c01ccf91b257
#regzbot title: phy: fsl-samsung-hdmi: i.MX8MP HDMI PHY probe fails with "P=
LL failed to lock"

Francesco


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
