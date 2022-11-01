Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78F79C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 20:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6worrsgp1kesRn7HvCZB9pC+AsmDWl4Vz7sdW+/2on8=; b=nYzVo0EreR6S8L
	3q79v/6kBE83tJP58tEzJvlXMPLhH14Y/NC5tZFOR6hLwiYnLhEapxcvI9y4bZbmI20FMi52maBj1
	t72BH8SiALtqAnT4OxvsfUrGbNdnV+852p1KOo6PJR5zDDiIOgZwl3yDEo3MQ32Wl995xuJW3dW4n
	GN6vIl3JCrZi+5z0dWBP6dYsbS+OdEsuCEalkh46MGbkXjuM0u4YUr7LxSLcSYbmVJMIKnyPpXhk/
	xIkuJDjtUUOsaqmkKE0oudkxEnjqQvd1kdBDIGV0O4HiwDgjGobKAZConGyvgjjbOhsag0H+caTcZ
	H8KRL1j/RQT81MY4KfEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opxaj-006rTI-U3; Tue, 01 Nov 2022 20:10:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opxaZ-006rQ0-NW; Tue, 01 Nov 2022 20:10:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 18F6AB81F70;
	Tue,  1 Nov 2022 20:10:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6180C433C1;
	Tue,  1 Nov 2022 20:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667333420;
	bh=3VqrBkVtuQxqDzc/aj1Jgl+flir8+zN6FTD2olM8T/s=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=T1brwFuXzWmAaQFMZLc8FdCvqkid0cynIaZpBitP9ZcKrEouGfJy7XI6i63g6eQLa
	 H0B85Cc5Cq/h7//RqkF61/QkALDBGP9xtdnxJJr+Kqf+zEMszdvulfccjcnxW+YhZK
	 GPKywJYuIsn4TZBukirCzRTTyTqWyV9w9HB3JMANBxjpfyH6yi9qelxUJNYbnFpFGm
	 1QZP11XCBeaw9mE6kEoSc7QeGZZRVd33naDfTRTI8eNU7n+qowINjOPajv1Xr+Vs7P
	 0k0yYOZYiEe+eUl9j4/t6tH11Q+ztLLG1F5YRFPMHHLqTiiq1uvzOo5l70oQHbtzDi
	 gtNc7tYo9CzEQ==
MIME-Version: 1.0
In-Reply-To: <d13ff3b2-79f0-2a72-c9da-2c310c4e3bb8@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com> <20221027191113.403712-5-sean.anderson@seco.com> <20221027230331.19C2FC433D6@smtp.kernel.org> <5f00ede6-10f5-c11c-ee21-54460c1f98b0@seco.com> <d13ff3b2-79f0-2a72-c9da-2c310c4e3bb8@seco.com>
Subject: Re: [PATCH v8 4/9] phy: fsl: Add Lynx 10G SerDes driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Jonathan Corbet <corbet@lwn.net>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Tue, 01 Nov 2022 13:10:18 -0700
User-Agent: alot/0.10
Message-Id: <20221101201020.B6180C433C1@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_131023_936557_88EC1570 
X-CRM114-Status: GOOD (  13.50  )
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

UXVvdGluZyBTZWFuIEFuZGVyc29uICgyMDIyLTEwLTI4IDA5OjMzOjU5KQo+IE9uIDEwLzI4LzIy
IDEyOjEzLCBTZWFuIEFuZGVyc29uIHdyb3RlOgo+ID4gT24gMTAvMjcvMjIgMTk6MDMsIFN0ZXBo
ZW4gQm95ZCB3cm90ZToKPiA+Pj4gK8KgwqDCoMKgwqDCoCByZWYgPSBkZXZtX2Nsa19nZXQoZGV2
LCByZWZfbmFtZSk7Cj4gPj4+ICvCoMKgwqDCoMKgwqAgaWYgKElTX0VSUihjbGstPnJlZikpIHsK
PiA+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gUFRSX0VSUihjbGstPnJl
Zik7Cj4gPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnJfcHJvYmUoZGV2
LCByZXQsICJjb3VsZCBub3QgZ2V0ICVzXG4iLCByZWZfbmFtZSk7Cj4gPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+ID4+PiArwqDCoMKgwqDCoMKgIH0KPiA+Pj4g
Kwo+ID4+PiArwqDCoMKgwqDCoMKgIGNsay0+cmVmID0gX19jbGtfZ2V0X2h3KHJlZik7Cj4gPj4K
PiA+PiBQbGVhc2UgZG9uJ3QgdXNlIF9fY2xrX2dldF9odygpIGZvciB0aGlzLiBJbnN0ZWFkIHVz
ZSBzdHJ1Y3QKPiA+PiBjbGtfcGFyZW50X2RhdGEgYW5kIHNldCBhIERUIGluZGV4IGluIHRoZSBp
bmRleCBtZW1iZXIgdG8gbWFwIHRvIHRoaXMKPiA+PiBjbGsuCj4gPiAKPiA+IE9LCj4gCj4gT2gs
IEkgcmVtZW1iZXIgd2h5IEkgZGlkIHRoaXMuIEkgbmVlZCB0aGUgcmVmZXJlbmNlIGNsb2NrIGZv
ciBjbGtfaHdfcm91bmRfcmF0ZSwKPiB3aGljaCBpcyBBRkFJQ1QgdGhlIG9ubHkgY29ycmVjdCB3
YXkgdG8gaW1wbGVtZW50IHJvdW5kX3JhdGUuCj4gCgpJcyB0aGUgcmVmZXJlbmNlIGNsayB0aGUg
cGFyZW50IG9mIHRoZSBjbGsgaW1wbGVtZW50aW5nCmNsa19vcHM6OnJvdW5kX3JhdGUoKT8KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
