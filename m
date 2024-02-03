Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E366FC4828D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Feb 2024 17:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Cc:To:From:References:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDmnP+6plB2/f6NvNGbVp1tsA1CDsVzRrkNJ+Cqa0pU=; b=MRYihAt7gH2yxd
	5Ca3utqZFagrIAgpyqhGRIixirZqOWKu3AoE3eN0M9ZbA3ZJzS/Nb3cNDWxfJCeXHuM7l0FJwOWQ2
	C19tU51VKobAqPEBiskhJTQA/UrZoE5fIZRRHXE9Kc/5zjM2KD2FeFZO9nUmZQVUIC5oOaFyVijyy
	waUQBf/1GyN/IETZHTCHBzXwfeOSwzH9+GhzCWjmaW4/8pu0T8x61uOGsUNimyLdJ/WSwverwdnyq
	Y1EmQraItano4OQzHmvXExXT7RxoOu3eQGeSK1jC+B+XKTB4q8H/5mKtqPJywmSyugJ9XGDLXQeeV
	wheZySjvQ4YRjhrbWVBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJZQ-0000000GtUj-2SoV;
	Sat, 03 Feb 2024 17:12:48 +0000
Received: from smtp-20.smtpout.orange.fr ([80.12.242.20] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWJZM-0000000GtTm-01A6;
	Sat, 03 Feb 2024 17:12:47 +0000
Received: from [192.168.1.18] ([92.140.202.140])
	by smtp.orange.fr with ESMTPA
	id WJZ5r8EMLWeJzWJZ5r3AWG; Sat, 03 Feb 2024 18:12:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1706980356;
	bh=ay6OCUA7f665DqUoUex+m2wntbywTqOyj8cITOvN8KA=;
	h=Date:Subject:References:From:To:Cc:In-Reply-To;
	b=kCMx8q0mDjuLPqDx/7+dWEIEE7lW8OT9Y5QLRj4N5/t8G2hNphXtndT49IBqx1acW
	 XB+W2IBQY0HrTHcD5EhobF1wPMfpI5ZKbl4vBUo4wTeyUQRjEtIXheQezSoNeuvpSO
	 TucK/VPKWZh8z6kE3lYW6uOMQSo8EdGvDWV7TsRtlKAXEkK92cZBTO1sXJ8zqrEEoA
	 AKDsDrT4e3NBeKtrkkJb84bS1sX98TV3yEQIqZ4LrYqX+lA+jn4JKbV+oYgH37wx7V
	 dweJuDy+gPkmydNUCqD4D0C8h/lnLBT14lniu84QJVTfnHOVnNZbswo3O9rC4SpFOc
	 LI1vxqSTSFK+Q==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 03 Feb 2024 18:12:36 +0100
X-ME-IP: 92.140.202.140
Message-ID: <9dd39fe9-9e9d-4093-b914-13006ac99792@wanadoo.fr>
Date: Sat, 3 Feb 2024 18:12:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V8 02/12] phy: freescale: add Samsung HDMI PHY
Content-Language: en-MW
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-3-aford173@gmail.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: aford173@gmail.com
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com,
 catalin.marinas@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 festevam@gmail.com, frieder.schrempf@kontron.de, jernej.skrabec@gmail.com,
 jonas@kwiboo.se, kernel@pengutronix.de, kishon@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, l.stach@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, maarten.lankhorst@linux.intel.com, marex@denx.de,
 mripard@kernel.org, neil.armstrong@linaro.org, p.zabel@pengutronix.de,
 rfoss@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, tzimmermann@suse.de, ulf.hansson@linaro.org,
 victor.liu@nxp.com, vkoul@kernel.org, will@kernel.org
In-Reply-To: <20240203165307.7806-3-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240203_091245_414954_C7ECCAB5 
X-CRM114-Status: GOOD (  12.19  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

TGUgMDMvMDIvMjAyNCDDoCAxNzo1MiwgQWRhbSBGb3JkIGEgw6ljcml0wqA6Cj4gRnJvbTogTHVj
YXMgU3RhY2ggPGwuc3RhY2gtYkljbnZiYUxaOU1FR25FOEM5K0lyUUBwdWJsaWMuZ21hbmUub3Jn
Pgo+IAo+IFRoaXMgYWRkcyB0aGUgZHJpdmVyIGZvciB0aGUgU2Ftc3VuZyBIRE1JIFBIWSBmb3Vu
ZCBvbiB0aGUKPiBpLk1YOE1QIFNvQy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBTdGFjaCA8
bC5zdGFjaC1iSWNudmJhTFo5TUVHbkU4QzkrSXJRQHB1YmxpYy5nbWFuZS5vcmc+Cj4gU2lnbmVk
LW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3My1SZTVKUUVlUXFlOEF2eHRpdU13eDN3QHB1Ymxp
Yy5nbWFuZS5vcmc+Cj4gVGVzdGVkLWJ5OiBBbGV4YW5kZXIgU3RlaW4gPGFsZXhhbmRlci5zdGVp
bi1XM28rOUJ1V2pRYVpveDRvcDRpV3p3QHB1YmxpYy5nbWFuZS5vcmc+Cj4gLS0tCgouLi4KCj4g
K3N0YXRpYyBpbnQgZnNsX3NhbXN1bmdfaGRtaV9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHk7Cj4g
KwlpbnQgcmV0Owo+ICsKPiArCXBoeSA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2Yo
KnBoeSksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFwaHkpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4g
Kwo+ICsJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcGh5KTsKPiArCXBoeS0+ZGV2ID0gJnBk
ZXYtPmRldjsKPiArCj4gKwlwaHktPnJlZ3MgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3Vy
Y2UocGRldiwgMCk7Cj4gKwlpZiAoSVNfRVJSKHBoeS0+cmVncykpCj4gKwkJcmV0dXJuIFBUUl9F
UlIocGh5LT5yZWdzKTsKPiArCj4gKwlwaHktPmFwYmNsayA9IGRldm1fY2xrX2dldChwaHktPmRl
diwgImFwYiIpOwo+ICsJaWYgKElTX0VSUihwaHktPmFwYmNsaykpCj4gKwkJcmV0dXJuIGRldl9l
cnJfcHJvYmUocGh5LT5kZXYsIFBUUl9FUlIocGh5LT5hcGJjbGspLAo+ICsJCQkJICAgICAiZmFp
bGVkIHRvIGdldCBhcGIgY2xrXG4iKTsKPiArCj4gKwlwaHktPnJlZmNsayA9IGRldm1fY2xrX2dl
dChwaHktPmRldiwgInJlZiIpOwo+ICsJaWYgKElTX0VSUihwaHktPnJlZmNsaykpCj4gKwkJcmV0
dXJuIGRldl9lcnJfcHJvYmUocGh5LT5kZXYsIFBUUl9FUlIocGh5LT5yZWZjbGspLAo+ICsJCQkJ
ICAgICAiZmFpbGVkIHRvIGdldCByZWYgY2xrXG4iKTsKPiArCj4gKwlyZXQgPSBjbGtfcHJlcGFy
ZV9lbmFibGUocGh5LT5hcGJjbGspOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIocGh5LT5k
ZXYsICJmYWlsZWQgdG8gZW5hYmxlIGFwYmNsa1xuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0K
PiArCj4gKwlwbV9ydW50aW1lX2dldF9ub3Jlc3VtZShwaHktPmRldik7Cj4gKwlwbV9ydW50aW1l
X3NldF9hY3RpdmUocGh5LT5kZXYpOwo+ICsJcG1fcnVudGltZV9lbmFibGUocGh5LT5kZXYpOwo+
ICsKPiArCXJldCA9IHBoeV9jbGtfcmVnaXN0ZXIocGh5KTsKPiArCWlmIChyZXQpIHsKPiArCQlk
ZXZfZXJyKCZwZGV2LT5kZXYsICJyZWdpc3RlciBjbGsgZmFpbGVkXG4iKTsKPiArCQlnb3RvIHJl
Z2lzdGVyX2Nsa19mYWlsZWQ7Cj4gKwl9Cj4gKwo+ICsJcG1fcnVudGltZV9wdXQocGh5LT5kZXYp
Owo+ICsKPiArCXJldHVybiAwOwo+ICsKPiArcmVnaXN0ZXJfY2xrX2ZhaWxlZDoKPiArCWNsa19k
aXNhYmxlX3VucHJlcGFyZShwaHktPmFwYmNsayk7Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+
ICsKPiArc3RhdGljIGludCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9yZW1vdmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiArewo+ICsJb2ZfY2xrX2RlbF9wcm92aWRlcihwZGV2LT5kZXYu
b2Zfbm9kZSk7CgpBIGNsa19kaXNhYmxlX3VucHJlcGFyZShwaHktPmFwYmNsaykgY2FsbCBzZWVt
cyB0byBiZSBtaXNzaW5nIGhlcmUuCk9yIG1heWJlIGRldm1fY2xrX2dldF9lbmFibGVkKCkgc2hv
dWxkIGJlIHVzZWQgZm9yICdhcGJjbGsnPwoKQ0oKCj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KCi4u
LgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
