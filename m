Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0F6C71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 21:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFN0iz6jrKutLz0LIofu15e4dIed/sXLrbV57pHSMuU=; b=EUGBE7tgd5s/yR
	1+ypTxS16UEIDpMRn1CqXhBHcBi/1L3nwpmceWuImWxpumtX6t4Dc3BY+3YtcZE3gKtwUtLRQ1FE0
	VZurGA3ko6bW15VX5HASwxQlL7Ik47Ct4RpRsNZPIpBf6LdhgH0gP76vZyX0bjQGt3vul+BjdTNQW
	ziHnndt7ujLnNG/MIUKFO3Ipe5YLMAyrpEqPAqdeVd/6ET+sNVw+272pAEUQD/EtYQvOOX4Pvgs1u
	IGJ8EGY/WRpfJrVlee4zyHKhAG4fFQCWfSRWOBzBI1Jd+mo8pKGxzr/doWpogZvBmq/Ubm/tZ+4va
	cyozhkTpv7QN8xpEuRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRdvg-00000008RJg-2zEC;
	Tue, 17 Jun 2025 21:33:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRduB-00000008R2l-0yGt;
	Tue, 17 Jun 2025 21:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BE17743994;
	Tue, 17 Jun 2025 21:31:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEBBFC4CEF1;
	Tue, 17 Jun 2025 21:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750195902;
	bh=1YfwZW+S936XwdA8SGfJ1ZJvlipD9uTXygNO4srMawo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YmarUdqcOEke0FSqL0Xg4J8Lsf3Wt1uxrnUTrBql9tooIzqRSqrJXRb/RthUG96tM
	 UhmIuCJamZ3RxGpHFDGNgVGHqRgU1HHltdd03/dUDd3yZXgKOp1z4NJsBzWdqKZRoT
	 Nhpr9RanMRtnDUygTTyNdDrv/EZ+9j1PkN20sbSIICvlIom/jxXKO7Iy/l/5DOxHrK
	 Bbs/ObfLHkXDYrqiBgMagOsKvqyvb6JzIr1I9Liskj/HU2yXXiA0ZapCnbVd5Mg2Kc
	 jqYO7cFto/25mDOQtAHCbJcXHeN3ftaqa2xSE6M8SFyV/zeuKzmBhVcfLIJFp6Mr6z
	 Mn6XCuVHjg8Yw==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
	Lee Jones <lee@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Alex Elder <elder@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Georgi Djakov <djakov@kernel.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	David Wronek <david@mainlining.org>,
	Jens Reidel <adrian@mainlining.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Danila Tikhonov <danila@jiaxyga.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-remoteproc@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org,
	linux@mainlining.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Connor Mitchell <c.dog29@hotmail.com>
Subject: Re: (subset) [PATCH 00/33] Add support for Qualcomm Snapdragon SM7150 SoC and Google Pixel 4a
Date: Tue, 17 Jun 2025 16:31:26 -0500
Message-ID: <175019588888.714929.17490930593303808143.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
References: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_143143_306348_5E34B871 
X-CRM114-Status: GOOD (  11.58  )
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

Ck9uIFR1ZSwgMjIgQXByIDIwMjUgMjM6MTc6MDEgKzAzMDAsIERhbmlsYSBUaWtob25vdiB3cm90
ZToKPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBRdWFsY29tbSBTbmFw
ZHJhZ29uIDczMC83MzBHLzczMkcKPiAoU003MTUwKSBwbGF0Zm9ybSBhbG9uZyB3aXRoIHRoZSBH
b29nbGUgUGl4ZWzCoDRhIChzdW5maXNoKSBkZXZpY2UuIFNpbmNlCj4gdGhlIG1vc3QgY3JpdGlj
YWwgZHJpdmVycyB3ZXJlIHN1Ym1pdHRlZCBhbmQgYXBwbGllZCBpbiBzZXBhcmF0ZSBwYXRjaAo+
IHNlcmllcywgdGhpcyBzZXJpZXMgaXMgbGFyZ2VseSBjb21wb3NlZCBvZiBEVCBiaW5kaW5ncyBh
bmQgZGV2aWNl4oCRdHJlZXMuCj4gCj4gVG8gZGF0ZSwgd2XigJl2ZSB0ZXN0ZWQgU003MTUwIHN1
cHBvcnQgb24gdGhlIGZvbGxvd2luZyBlbGV2ZW4gZGV2aWNlczoKPiAtIEdvb2dsZSBQaXhlbMKg
NGEgKHN1bmZpc2gpCj4gLSBTYW1zdW5nIEdhbGF4ecKgQTcxIChhNzE1ZikKPiAtIExlbm92byBU
YWLCoFAxMcKgUHJvIChqNzA2ZikKPiAtIFhpYW9taSBQT0NPwqBYMiAocGhvZW5peCkKPiAtIFhp
YW9taSBQT0NPwqBYMyAoa2FybmEpIC8gUE9DT8KgWDPCoE5GQyAoc3VyeWEpCj4gLSBYaWFvbWkg
UmVkbWkgTm90ZcKgMTDCoFBybyAoc3dlZXQpCj4gLSBYaWFvbWkgUmVkbWkgTm90ZcKgMTLCoFBy
byAoc3dlZXRfazZhKQo+IC0gWGlhb21pIE1pwqA5VCAvIFJlZG1pIEsyMCAoZGF2aW5jaSkKPiAt
IFhpYW9taSBNacKgTm90ZcKgMTDCoExpdGUgKHRvY28pCj4gLSBYaWFvbWkgTWnCoE5vdGXCoDEw
IChDQznCoFBybykgJiBNacKgTm90ZcKgMTDCoFBybyAoQ0M5wqBQcm8gUHJlbWl1bSkgKHR1Y2Fu
YSkKPiAtIFhpYW9taSBNacKgMTHCoExpdGXCoDRHIChjb3VyYmV0KQo+IAo+IFsuLi5dCgpBcHBs
aWVkLCB0aGFua3MhCgpbMDEvMzNdIGR0LWJpbmRpbmdzOiBhcm06IGNwdXM6IEFkZCBLcnlvIDQ3
MCBDUFVzCiAgICAgICAgY29tbWl0OiA3Yjc2OGQxMjM1ZGJkOThlZjcyNjg1OTY5OTVkODZkZjMx
YWZjZTIxCgpCZXN0IHJlZ2FyZHMsCi0tIApCam9ybiBBbmRlcnNzb24gPGFuZGVyc3NvbkBrZXJu
ZWwub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
