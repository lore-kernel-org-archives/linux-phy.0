Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B7E1C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 20:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBn5tRHYTCrDpAErIJuPb+KJ9elrlOJ17N+gt2SNYoM=; b=B5ZFv52BPRKMZ3
	0q8mvA4Lx3CyFNerlmYaMr2YUj/xJRK6YDOHUWN4oAtAdN3IU2AoayRy4v6NhEGBqqc71KIkvcHYz
	FxYv1/UcwHENnjhMEgprveRezAHCe1I2KFrNKutyOnIqdaL81uOlTYX7WLOSEoS+5UPtkMjALZQ3e
	8MCbJSzlwLdm1rhR1gSyodTpZRFcE9MFmJyoIC7Fs/FpTA71AKohOWIwWdZBzfjtwz3MOSbxJgAcK
	qzmM8g4LrbDISVvTwEoEplyB5CRU30c4t+SNhillk062CGYqH/0G2cVP1WTJErA5Zs/bGzDfBW0FH
	Lv7Crh0sn86V62m+J5dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x42DS-0000000AA3C-2cir;
	Tue, 08 Sep 2026 20:14:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x42DR-0000000AA33-2Xwo;
	Tue, 08 Sep 2026 20:14:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4FB0D406F6;
	Tue,  8 Sep 2026 20:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA0C1F00A3A;
	Tue,  8 Sep 2026 20:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788898489;
	bh=sj1Ha1RkFOVatFTL0DjQ7FjrTJ+tvbpy4aDhxc56Hwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TBmvOZei/F87+VrsJyz2vLSx4drrq+Mo2AyIhty6cnRWIx4xEqumVspwWndJKSPla
	 6bMz5NXp5wbwncBfC8OJ69by04CAyE0ysmm/Hfyb83eri0dazwKp6awDk1uYtKhNhK
	 bia0zqfuijbS2QwURH5RTd3UO6dyGRANca8dhKinrJSe4azNDnzunPnSErNlO2bvXJ
	 obCaF4h0H8/c25PoD629aySuZRlZdiY4vrn64G4UQOFbtG4iQQqZSNkv/C8t1IjKyg
	 /mNxbPmXNpiB6q5J1a+Xscrw/s+O3Bxsrxdy9Q/7YkHiBfg3Ilc2hUzKM9PpPI0w/3
	 k357snXzlA3ng==
Date: Tue, 8 Sep 2026 22:14:33 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Linus Walleij <linusw@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Drew Fustini <fustini@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Vladimir Zapolskiy <vz@mleia.com>, Stefan Agner <stefan@agner.ch>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-omap@vger.kernel.org, Alexander Clouter <alex@digriz.org.uk>,
	"Jeremy J. Peper" <jeremy@jeremypeper.com>,
	Damien Le Moal <dlemoal@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
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
Subject: Re: [PATCH 05/13] ARM: orion/dove/mv78xx0: remove all board files
Message-ID: <aqBsqaftroGc0Mfb@ryzen>
References: <20260908152808.3928630-1-arnd@kernel.org>
 <20260908152808.3928630-6-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908152808.3928630-6-arnd@kernel.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDU6Mjc6NTVQTSArMDIwMCwgQXJuZCBCZXJnbWFubiB3
cm90ZToKPiBGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+IAo+IFRoZSAnb3Jp
b24nIHBsYXRmb3JtIGlzIHRoZSBwcmVkZWNlc3NvciB0byB3aGF0IGxpbnV4IG5vdyBjYWxscyB0
aGUKPiAnbXZlYnUnIGxpbmUgb2YgTWFydmVsbCBTb0NzLCBhbmQgb3JpZ2luYWxseSBjb3ZlcmVk
IG9yaW9uNXgsCj4gbXY3OHh4MCwga2lya3dvb2QsIGRvdmUgYW5kIGEgZmV3IG90aGVycyB0aGF0
IGRvIG5vdCBoYXZlIGFueQo+IHVwc3RyZWFtIHN1cHBvcnQgYXQgdGhlIG1vbWVudC4KPiAKPiBP
bmx5IGEgZmV3IGJvYXJkIGZpbGVzIHJlbWFpbiBoZXJlLCB0aGVzZSBhcmUgdGhlIG9uZXMgbGVm
dAo+IGluIDIwMjIgYm9hcmQgZmlsZSBwdXJnZSBiZWNhdXNlIHRoZXkgaGFkIHNvbWUgbGV2ZWwg
b2Ygc3VwcG9ydAo+IGluIERlYmlhbiBvciBPcGVuV1JULCBtb3N0bHkgZm9yIGNvbW1lcmNpYWwg
TkFTIG9yIHJvdXRlciBib3hlcy4KPiBUaGlzIGRpc3RybyBzdXBwb3J0IGlzIG5vdyBnb25lLCBh
bmQgbm9ib2R5IGhhcyBjb252ZXJ0ZWQgdGhlCj4gYm9hcmQgZmlsZXMgdG8gZGV2aWNldHJlZSwg
dGhvdWdoIHRoZSBvcmlvbjV4IGFuZCBkb3ZlIHBsYXRmb3Jtcwo+IGFsc28gY29tZSB3aXRoIGRl
dmljZXRyZWUgc3VwcG9ydCBmb3Igc29tZSBvdGhlciBtYWNoaW5lcy4KPiAKPiBDYzogQW5kcmV3
IEx1bm4gPGFuZHJld0BsdW5uLmNoPgo+IENjOiBTZWJhc3RpYW4gSGVzc2VsYmFydGggPHNlYmFz
dGlhbi5oZXNzZWxiYXJ0aEBnbWFpbC5jb20+Cj4gQ2M6IEdyZWdvcnkgQ2xlbWVudCA8Z3JlZ29y
eS5jbGVtZW50QGJvb3RsaW4uY29tPgo+IENjOiBBbGV4YW5kZXIgQ2xvdXRlciA8YWxleEBkaWdy
aXoub3JnLnVrPgo+IENjOiBKZXJlbXkgSi4gUGVwZXIgPGplcmVteUBqZXJlbXlwZXBlci5jb20+
Cj4gQ2M6IERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+Cj4gQ2M6IE5pa2xhcyBD
YXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IENjOiBVbGYgSGFuc3NvbiA8dWxmaEBrZXJuZWwu
b3JnPgo+IENjOiBMb3JlbnpvIFBpZXJhbGlzaSA8bHBpZXJhbGlzaUBrZXJuZWwub3JnPgo+IENj
OiAiS3J6eXN6dG9mIFdpbGN6ecWEc2tpIiA8a3dpbGN6eW5za2lAa2VybmVsLm9yZz4KPiBDYzog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+Cj4gQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoQGtlcm5lbC5vcmc+Cj4gQ2M6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5j
b20+Cj4gQ2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gQ2M6IEFsZXhhbmRyZSBC
ZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4KPiBDYzogIlJhZmFlbCBKLiBX
eXNvY2tpIiA8cmFmYWVsQGtlcm5lbC5vcmc+Cj4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwu
bGV6Y2Fub0BrZXJuZWwub3JnPgo+IENjOiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5u
ZXQ+Cj4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiBDYzogTGludXMgV2Fs
bGVpaiA8bGludXN3QGtlcm5lbC5vcmc+Cj4gQ2M6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJyZ2xA
a2VybmVsLm9yZz4KPiBDYzogVGhvbWFzIFdlaXNzc2NodWggPHRob21hcy53ZWlzc3NjaHVoQGxp
bnV0cm9uaXguZGU+Cj4gQ2M6IGxpbnV4LWlkZUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgt
bW1jQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXJ0Y0B2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogbGludXgtcG1Admdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXdhdGNoZG9n
QHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1zb3VuZEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzog
bGludXgtZ3Bpb0B2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5u
IDxhcm5kQGFybmRiLmRlPgoKQWNrZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwu
b3JnPiAjIGF0YSBwYXJ0cwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
