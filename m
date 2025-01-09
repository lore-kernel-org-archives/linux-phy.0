Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F36E6E7719A
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 15:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFl64u/0Q3MpFzF69Z/RHlv0U2jOyVUkJukpT4DGsSk=; b=P/w75MudgMGAyQ
	nGJLGVOkx7REyZYFI9uwedJRDofKA2m2H6kyZOJFi/fyG69d0H43YQwOsompYhW6gd91vRtMrB1lM
	ACJempXolFzHZUXuL+nDq6QWZ3e0SC2tGBQC/y8KLX2vT3XTO0usaAUQS6oujp14ljR2jIueF0//K
	9BYNFR0bu4ViUN4ZBN9Gqum01e738mVCEYsCJ4Igw1/af2GsbSdiGC3BQS9FJ3FseeJkaQ9y+Gdb+
	+kicWC6/tq0ak2+V57F0nBtEWS4nxN1NVHsYt/Nu6cO7Xd8WeiS648PjNIxGhN4isSc0hIZMD0Gui
	jA9yhD6jC7yZ1RKLr3Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu4D-0000000CMPX-2j2I;
	Thu, 09 Jan 2025 15:03:25 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVu47-0000000CMF9-1BzR
	for linux-phy@lists.infradead.org;
	Thu, 09 Jan 2025 15:03:20 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-21669fd5c7cso16673675ad.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Jan 2025 07:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736434998; x=1737039798; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MhOqqbnEnMkcQmR1ESz1kqbPSFFuQ/GsADIqB1qYNv4=;
        b=mVNd2g7atrK3MMSjBLEa2vE2Yt3k7Wdmc3ZLR1OIOwzsQkJ8FNookM85lKzidYsd85
         mGJV5naUWqgBZG02WWPvW378s/rMdScYVwT9UwgYhE+DL/p9MJxjjR6IdBeQz3zxxH/o
         BxY1AYrgpGhwojQFYx1Wptrzgq2GBLlm5dOb9sGFMIUzH/VfGEAx5q9WM0pAvhQyOW7w
         odoP9/urPPwvHEMu9+21GpFAqwwgrwYPHo7jMsJPczsZzfaiOAOMGun1crIk5MFZUqlU
         rJ+thrkRWl/qoH2yRudW+ynfim+vPUOXOnBxfJH5/E1f40I7tspOLWnzMMnvBm8Nlcvj
         d3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736434998; x=1737039798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MhOqqbnEnMkcQmR1ESz1kqbPSFFuQ/GsADIqB1qYNv4=;
        b=a0w68TAuifK+XiaR8/4UU0Q8elS3VpN3t10fph17cDr8EeOjTzKZpddRjTl6Nv/ksb
         IPx/G/M35WWG/8qtl3dV3WNpxiA7riBWon/x6rXks29PMLp+miLpDOA9fvmJtAe/9sCb
         EUFlY23OTYTmsCavj4+MXd32uL2CrtqTUHEillyB0m8YEVqY8WuepmFUu0DwnGsDCZXn
         yv2fMcuz1D8TVwkkWB5JGJqDN8xFHLbNmvGW1pg2Gzu2tU2+rm524UCRJKEsoR0PZDzf
         6QdIbZjqebyYOSv4f4It1DLhz0qM+7NCBW+74m6pB+dQTBMRI7/JAHh5LPNas4cQGZL1
         6qmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcBTPoaXFKYwXBdrRC3tAqGGIKlkNukxbt8o9mg/Cmgs6i2mMcvuKTV2plZvL2KNxUZyMhh2Jvu84=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAcdapAv1o21DUvowEvaEAJq5AdhEgjGQwArxqvsrzi0O6gtF+
	jHx7CzMP32It2zbn8o2aczxz6O/Fkoo8TPrQiRlSgqL4N9sif+RIju9C2u81FQsm93dU5dISWcA
	9IDhzFySo8uxoqLsqzAtOT4Eo4dE=
X-Gm-Gg: ASbGnctwOoEseg+cVRIoAqZ/sd6GPlpLWJPUXihS8maBhuI3bw+G0XiROQxH84F6DsT
	aFGtnTShHoclfFRYwDYSbF4fXoP/0Ft8xO/G2Kg==
X-Google-Smtp-Source: AGHT+IExSMkpHiELRaLBm4sNjMYyRtqT7xBYDi+JqwLIHIXfIRve3ejRNL0gw2P+QE9BprgQu/JSE5KeAcJx9i4ymv4=
X-Received: by 2002:a05:6a00:2388:b0:728:e906:e466 with SMTP id
 d2e1a72fcca58-72d21ff5241mr10812651b3a.21.1736434996661; Thu, 09 Jan 2025
 07:03:16 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
 <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
 <CAHCN7x+UzXQz+2zs+qvvWfWCmhsxsZoxP+2WHpfdZGnzwDPNQg@mail.gmail.com>
 <Z3aDU_dhfgEHlL4u@atmark-techno.com> <CAHCN7x+XNes4DbW1OvTjwsCddw5FJesCbPkv88rfRHM6sGBKSg@mail.gmail.com>
 <be2c1add-249c-4d01-8233-5a6dcb297e94@kylinos.cn> <671f844e-58af-47f3-8c31-776bb41413f2@kylinos.cn>
In-Reply-To: <671f844e-58af-47f3-8c31-776bb41413f2@kylinos.cn>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 9 Jan 2025 09:03:03 -0600
X-Gm-Features: AbW1kvYjvFySWywq3ahxJ6t88AtrI18X5Jni4-urunX1KnoT-65oSK08DhCV28c
Message-ID: <CAHCN7xL8Yn4HQwgZAFgxbdVU6VSf6vGb2GEANeGRTaPKAA5uhw@mail.gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>, geert@linux-m68k.org, 
	aford@beaconembedded.com, arnd@arndb.de, frieder.schrempf@kontron.de, 
	kishon@kernel.org, l.stach@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, m.felsch@pengutronix.de, sandor.yu@nxp.com, 
	u.kleine-koenig@baylibre.com, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_070319_326480_21371332 
X-CRM114-Status: GOOD (  24.60  )
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

T24gVGh1LCBKYW4gOSwgMjAyNSBhdCAyOjQ14oCvQU0gUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxp
bm9zLmNuPiB3cm90ZToKPgo+Cj4g5ZyoIDIwMjUvMS8zIDA5OjM0LCBQZWkgWGlhbyDlhpnpgZM6
Cj4gPiBoaSBBZGFtLAo+ID4KPiA+IOWcqCAyMDI1LzEvMiAyMzowNCwgQWRhbSBGb3JkIOWGmemB
kzoKPiA+PiBPbiBUaHUsIEphbiAyLCAyMDI1IGF0IDY6MTXigK9BTSBEb21pbmlxdWUgTWFydGlu
ZXQKPiA+PiA8ZG9taW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPiA+
Pj4gQWRhbSBGb3JkIHdyb3RlIG9uIE1vbiwgRGVjIDMwLCAyMDI0IGF0IDA4OjExOjE2UE0gLTA2
MDA6Cj4gPj4+Pj4gaW5kZXggNWVhYzcwYTFlODU4Li4zZTRkMWE1MTYwZWEgMTAwNjQ0Cj4gPj4+
Pj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiA+
Pj4+PiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwo+
ID4+Pj4+IEBAIC0zNDEsNyArMzQxLDcgQEAgZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl
X3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSwKPiA+Pj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+Pj4+PiAgICAgICAgIH0KPiA+Pj4+Pgo+
ID4+Pj4+IC0gICAgICAgd3JpdGViKEZJRUxEX1BSRVAoUkVHMTJfQ0tfRElWX01BU0ssIGRpdiks
IHBoeS0+cmVncyArIFBIWV9SRUcoMTIpKTsKPiA+Pj4+PiArICAgICAgIHdyaXRlYihGSUVMRF9Q
UkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgPT0gNCA/IGRpdiAtIDEgOiBkaXYpLCBwaHktPnJl
Z3MgKyBQSFlfUkVHKDEyKSk7Cj4gPj4+PiBUaGUgZm9yLWxvb3AgYWJvdmUgdGhpcyBsaW5lIHN0
YXRlczogICBmb3IgKGRpdiA9IDA7IGRpdiA8IDQ7IGRpdisrKQo+ID4+Pj4gSG93IGNvdWxkIHRo
aXMgZXZlciByZWFjaCA0PyAgSWYgaXQgZGlkIHJlYWNoIDQsIHRoZSBjYWxjdWxhdGlvbiBmb3IK
PiA+Pj4+IGludF9wbGxjbGsgd291bGQgbmVlZCB0byBiZSByZWNhbGN1bGF0ZWQgc2luY2UgaW50
X3BsbGNsayA9IHBjbGsgLyAoMQo+ID4+Pj4gPDwgZGl2KTsKPiA+Pj4gQnV0Li4uIGZvciAoZGl2
ID0gMDsgZGl2IDwgNDsgZGl2KyspIGRvZXMgcmVhY2ggNCwgaWYgdGhlIGJyZWFrCj4gPj4+IGNv
bmRpdGlvbiBkaWRuJ3QgbWF0Y2gsIHdoaWNoIGlzIHNvbWV0aGluZyB0aGUgY29tcGlsZXIgY2Fu
bm90IGVuc3VyZQo+ID4+PiBoZXJlLgo+ID4+Pgo+ID4+PiBUaGUgb2xkIGNvZGUgd291bGQganVz
dCBmYWxsIG91dCBvZiBhbnkgb2YgdGhlIHN3aXRjaCBjYXNlcyBhbmQgZmFsbGJhY2sKPiA+Pj4g
dG8gZGl2ID0gMSBpZiBwaXhjbGsgPiAyOTcwMDAwMDAsIHdoaWNoIGlzIGxpa2VseSBpbmNvcnJl
Y3QsIHNvIGluIHRoYXQKPiA+Pj4gc2Vuc2UganVzdCBwYWRkaW5nIHRoaXMgdGhyb3VnaCBgJiAz
YCBhbmQgcHJldGVuZGluZyBpdCB3aWxsIG5ldmVyCj4gPj4+IGhhcHBlbiBpcyBwcm9iYWJseSBh
Y2NlcHRhYmxlLCBidXQgdGhpcyBvdWdodCB0byBoYXZlIGEgYmV0dGVyIGNvbW1lbnQKPiA+Pj4g
dGhhbiB3aGF0IFBlaSBqdXN0IHNlbnQuCj4gPj4gTWF5YmUgd2UgdXNlIHRoZSBNQVggZnVuY3Rp
b24gdG8gc2V0IGRpdiA9IG1heChkaXYsMyk7Cj4gPiBkbyB5b3UgbWVhbjoKPiA+IHdyaXRlYihG
SUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBtaW4oZGl2LCAzKSksIHBoeS0+cmVncyArIFBI
WV9SRUcoMTIpKTsKPgo+IERvZXMgYW55b25lIGhhdmUgYW55IHN1Z2dlc3Rpb25zPwoKU29ycnkg
Zm9yIHRoZSBkZWxheWVkIHJlc3BvbnNlcywgSSB3YXMgdHJhdmVsaW5nIGZvciB0aGUgbGFzdCB3
ZWVrLgoKV2hhdCBhYm91dCByZXBsYWNpbmcgdGhlIGZvciBsb29wIHdpdGggYSBkby13aGlsZSBs
b29wIHdoZXJlIHRoZQpjcml0ZXJpYSBpcyBpbnRfcGxsY2xrIDwgKDUwICogTUhaKSAmJiBkaXYg
PD0gMy4gIE1pZ2h0IHRoYXQgd29yaz8KCmFkYW0KCgo+Cj4gVGhpcyBjb21waWxhdGlvbiBpc3N1
ZSB3aWxsIHJlc3VsdCBpbiBlcnJvcnMgb24gc29tZSB2ZXJzaW9ucyBvZiBnY2MsCj4KPiBzbyBp
dCBzdGlsbCBuZWVkcyB0byBiZSByZXNvbHZlZCBhZnRlciBhbGwuCj4KPiA+Pj4gKHRoaXMgd2Fz
IGNvcnJlY3Qgd2l0aCB0aGUgb2xkIGxvb2t1cCB0YWJsZXMsIEknbSBub3Qgc3VyZSBpZiB3ZSBj
YW4ndAo+ID4+PiBjb21wdXRlIGFueSBoaWdoZXIgZnJlcXVlbmNpZXMgbm93PykKPiA+Pj4KPiA+
Pj4gTXkgcHJlZmVyZW5jZSB3b3VsZCBiZSB0byBhY3R1YWxseSBjaGVjayBhbmQgaGFuZGxlIHRo
aXMgc29tZWhvdyBzaW5jZSBJCj4gPj4+IGRvbid0IHRoaW5rIHRoaXMgcGFydCBvZiB0aGUgY29k
ZSBpcyB0aGF0IHBlcmZvcm1hbmNlIGNyaXRpY2FsIHRoYXQgd2UKPiA+Pj4gY2FuJ3QgYWZmb3Jk
IGFuIGV4dHJhIGluc3RydWN0aW9uLCBlLmcuIHNvbWV0aGluZyBsaWtlIHRoYXQ6Cj4gPj4+IGlm
IChXQVJOX09OQ0UoZGl2ID09IDQsICJwaXhjbGsgJXUgb3V0IG9mIHJhbmdlIiwgcGNsaykpCj4g
Pj4+ICAgICAgICAgKGFwcHJvcHJpYXRlIGZhbGxiYWNrIG9yIHJldHVybj8pCj4gPj4+Cj4gPj4+
IGJ1dCBJIGhhdmVuJ3Qgc3BlbnQgdGhlIHRpbWUgdG8gYWN0dWFsbHkgY2hlY2sgc28gd2lsbCBs
ZWF2ZSB0aGF0IHVwIHRvCj4gPj4+IHlvdS4KPiA+Pj4KPiA+Pj4gVGhhbmsgeW91IGJvdGgsCj4g
Pj4+IC0tCj4gPj4+IERvbWluaXF1ZQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
