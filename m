Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A317C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMb8IeVitog6lP4+P7iVkDEZpdsSLb2CQOaqzokYG4w=; b=g6A82iEcL2ABB+
	zucySsmcOtaUWLvyd1jIjt/lILddaOGoAOLlBoKdv2y1dpAjbwaTuSB1v49+szczNQhIkT7ybteCy
	4Cpuw8KnacHQTrdtCsy5fWllUUkNWqXGz/RVlooUcb9Nzlc7HS8O6QXyvAqA9EvWvpy+1YBgdiFBY
	R5g73T8yDopDkg9JO5JUVJE9ZgRuAg1CByFvl+AUk6qBxSugdCQ847dBvhBAnoDJQlFP/kAPwo06C
	Z6Xt5dx+VCGCAkq2DOBbCiM9OqkMABT4oIbBMflk+lG3IIziV+1qCJGN1qjEyoV+qNTxUZ1YSFtqG
	ZdZqb3Th4s/pr9dOidsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDvg-0000000BtlT-0mHW;
	Fri, 26 Jun 2026 21:17:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdDve-0000000BtlM-2jfY
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:17:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0C8BA600AB;
	Fri, 26 Jun 2026 21:17:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38CCC1F000E9;
	Fri, 26 Jun 2026 21:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782508657;
	bh=K0hiYeRKLlQf/feAsch7WFukT1+Bz6EvirZMzdpt4ao=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ts9xbBd3ZPnYRKuuEHvEr0YVGSYL3f1Fx242RS5UaW3PB0dfS4IBYsfQ7UJ5zvFyU
	 RmT0GP5GDddVdaye08IkGpK0VLJQ131wyVBQi9Kd4KmsKhol0r+Hug4xCmLyeUxjTv
	 EKa0mzwNN+Q+Ecsej8GuE0mnw0QNXqNJLNwCIPWguTLDTvy9cNMpqjP4jGYnc83fNj
	 NknRAzmNzlCKvwJ/ZlPmdNUs9ZcZd3gXDRs/VQdArfGl9QZK50JvqMSHJEoMqF5j/h
	 PzH8SMZNENmXerm+/CjgmLyBpMbJbZbocHZyp0zU2+8I64cBEoIS4/x5+Ttml01XRO
	 BxIP6aQ30gHbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 13/29] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260626-rockchip-usbdp-cleanup-v8-13-47f682987895@collabora.com>
References: <20260626-rockchip-usbdp-cleanup-v8-0-47f682987895@collabora.com>
 <20260626-rockchip-usbdp-cleanup-v8-13-47f682987895@collabora.com>
Date: Fri, 26 Jun 2026 21:17:36 +0000
Message-Id: <20260626211737.38CCC1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IHRoZSBwYXRjaCdzIGZpeCBpcyBpbmNvbXBsZXRlLiBUaGUgbGFuZSBjb3VudCB2YWxpZGF0aW9u
IGFkZGVkIHRvIHByZXZlbnQgRFAgY29uZmlndXJhdGlvbnMgZnJvbSBjb3JydXB0aW5nIFVTQjMg
UEhZIHN0YXRlIGlzIGJ5cGFzc2VkIGR1cmluZyB2b2x0YWdlLW9ubHkgdXBkYXRlcy4gSWYgdGhl
IFR5cGUtQyBzdGF0ZSBkeW5hbWljYWxseSByZWR1Y2VzIHRoZSBhdmFpbGFibGUgRFAgbGFuZXMs
IGB1ZHBoeS0+ZHBfbGFuZXNgIGlzIHVwZGF0ZWQgYnV0IHRoZSBjYWNoZWQgYHVkcGh5LT5sYW5l
c2AgcmVtYWlucyBzdGFsZS4gQSBzdWJzZXF1ZW50IHZvbHRhZ2Utb25seSB1cGRhdGUgd2lsbCBp
dGVyYXRlIHVwIHRvIHRoZSBzdGFsZSBgdWRwaHktPmxhbmVzYCBhbmQgd3JpdGUgRFAgdm9sdGFn
ZSBjb25maWd1cmF0aW9ucyB0byB0aGUgcGh5c2ljYWxseSByZWFzc2lnbmVkIFVTQjMgbGFuZXMs
IGNvcnJ1cHRpbmcgdGhlIFVTQjMgUEhZIHN0YXRlLgotLQoKY29tbWl0IGUxMWEzY2QxYjE4MWM0
ZmRjOWUxOGExNmYyODkzZDNhZTc0NjVjYjUKQXV0aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2Vi
YXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHVzYmRwOiBMaW1p
dCBEUCBsYW5lIGNvdW50IHRvIG11eGVkIGxhbmVzCgpUaGlzIGNvbW1pdCBsaW1pdHMgdGhlIERp
c3BsYXlQb3J0IGxhbmUgY291bnQgdG8gMiBpZiB0aGUgUEhZIGlzCnJlc3RyaWN0ZWQgZHVlIHRv
IFVTQjMgdXNhZ2UuIEl0IGFpbXMgdG8gcHJldmVudCBVU0IzIHN0YXRlIGNvcnJ1cHRpb24KZHVy
aW5nIHZvbHRhZ2UgY29uZmlndXJhdGlvbi4KCkNsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcGh5LzIwMjYwNjEyMTY1NTQ2Ljk4RTFGMUYwMDBFOUBzbXRwLmtlcm5lbC5vcmcv
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
YyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggNWMz
OGRhMGRhZGQyMi4uNmRlOGFjM2Y5MTQ0MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTExMzIsNiArMTEzMiw5IEBAIHN0YXRpYyBpbnQgcmtf
dWRwaHlfZHBfcGh5X3ZlcmlmeV9saW5rX3JhdGUoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwKPiAg
c3RhdGljIGludCBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xhbmVzKHN0cnVjdCBya191ZHBoeSAq
dWRwaHksCj4gIAkJCQkJc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19kcCAqZHApCj4gIHsKPiAr
CWlmIChkcC0+bGFuZXMgPiB1ZHBoeS0+ZHBfbGFuZXMpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4g
KwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBw
YXRjaCwgYnV0IGlzIHRoZSBmaXggaW5jb21wbGV0ZSBmb3IKdm9sdGFnZS1vbmx5IHVwZGF0ZXM/
CgpJZiBhIFR5cGUtQyBldmVudCByZW5lZ290aWF0ZXMgdGhlIGNvbm5lY3Rpb24gYW5kIHJlc3Ry
aWN0cyB1ZHBoeS0+ZHBfbGFuZXMKdG8gMiwgdWRwaHktPmxhbmVzIGNvdWxkIHN0aWxsIGhvbGQg
YSBzdGFsZSB2YWx1ZSAobGlrZSA0KS4KCkxvb2tpbmcgYXQgcmtfdWRwaHlfZHBfcGh5X2NvbmZp
Z3VyZSgpLCB0aGUgbGFuZSB2ZXJpZmljYXRpb24gaXMgc2tpcHBlZAppZiBkcC0+c2V0X2xhbmVz
IGlzIGZhbHNlOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtf
dWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKCS4uLgoJaWYgKGRwLT5zZXRfbGFuZXMpIHsKCQly
ZXQgPSBya191ZHBoeV9kcF9waHlfdmVyaWZ5X2xhbmVzKHVkcGh5LCBkcCk7CgkJaWYgKHJldCkK
CQkJcmV0dXJuIHJldDsKCX0KCS4uLgp9CgpJZiB0aGUgZHJpdmVyIHRoZW4gaXNzdWVzIGEgcGh5
X2NvbmZpZ3VyZSgpIHdpdGggc2V0X2xhbmVzPWZhbHNlIGFuZApzZXRfdm9sdGFnZXM9dHJ1ZSwg
dGhlIHZvbHRhZ2UgbG9vcCB3aWxsIGl0ZXJhdGUgdXNpbmcgdGhlIHN0YWxlCnVkcGh5LT5sYW5l
cyB2YWx1ZToKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3Vk
cGh5X2RwX3BoeV9jb25maWd1cmUoKSB7CgkuLi4KCWlmIChkcC0+c2V0X3ZvbHRhZ2VzKSB7CgkJ
Zm9yIChpID0gMDsgaSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7CgkJCWxhbmUgPSB1ZHBoeS0+ZHBf
bGFuZV9zZWxbaV07CgkuLi4KfQoKQ291bGQgdGhpcyBzdGlsbCByZXN1bHQgaW4gd3JpdGluZyBE
UCB2b2x0YWdlIGNvbmZpZ3VyYXRpb25zIHRvIHJlYXNzaWduZWQKVVNCMyBsYW5lcywgY29ycnVw
dGluZyB0aGUgVVNCMyBQSFkgc3RhdGU/Cgo+ICAJc3dpdGNoIChkcC0+bGFuZXMpIHsKPiAgCWNh
c2UgMToKPiAgCWNhc2UgMjoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyNi1yb2NrY2hpcC11c2JkcC1jbGVhbnVw
LXY4LTAtNDdmNjgyOTg3ODk1QGNvbGxhYm9yYS5jb20/cGFydD0xMwoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
