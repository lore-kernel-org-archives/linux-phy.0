Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313E0606D815
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 11:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P5haeCiB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zaNxOew9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iGwDQIUJd0GbvtU4SaVHqoMbYtge+AtYdJVMSNE0s3E=; b=P5haeCiBxoSsynLo+BsBB+oSMw
	Nuzd6rjPNSoOjZhFIMwI8nMg+GpiO2RhwUIB5KeYEadyLY3AO4q8HZgNYyU0YuXisWMfUX4zb/gZc
	oiurB7U80JbH9DneTI/oEgz+xlXzHGWp7Nuwi1rF/XXxbVxpJWK4Rl7lFv/a0olJqsI6RDzCdTg0H
	Cu7Pa0802JXhc3cIS9PfgZq4rNGdrKvGN/idafjJGFufOj83QvV5IfYYkXKoPd3YPQt8wCg/P5qvI
	2SkpXvBCjK0dIQGSweD50AJE1J7OyhSC4h1u3tpQxqGDEF2mrU9N1QmoN4seRura44IPkszP/q4rQ
	G1KqXIOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNt3-00000000Zwr-3sXG;
	Mon, 09 Nov 2026 11:50:09 +0000
Received: from mail-dy1-x1331.google.com ([2607:f8b0:4864:20::1331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQNt1-00000000ZwT-1KEz
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 11:50:08 +0000
Received: by mail-dy1-x1331.google.com with SMTP id 5a478bee46e88-3282db206d3so1749940eec.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 03:50:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794225006; cv=none;
        d=google.com; s=arc-20260327;
        b=HXTycdhMLccdUJdsKf/8jrIy5auVa2XEga5sl0m4362eVKCx4LEehRYklpSxNY7h+g
         YCEYHwnxEdTjHwrEm88t6rX1G6GqP+CrgCcmWvkg7LMdUDB0NTT49o5KZ4FIuD+Cw/24
         Or+dyssWtIoJl/g1R0gx2ys2QjGJ7FiRJT5gQIa8fkG4MA/8qyJqX5ls31eW9Q55Kw82
         0pGU0gYgKZa9tOnjmTN7qHqIQUC/Tqt6OSBwVgfr5YmapIjAlk/YMleDWqVtdvPvOTSo
         qkhHfpZbly794QLJKSX6svIt22BSeC0ylfVZv/EmaWnPxlkJgXpcSV5zDoHr7in1Fem5
         Od1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=u0TI0VRhkkEuzSSXfjCVwhEWLOzK7uV4x4syO3ophfI=;
        fh=YjQRf4V3ok9FzaXawNIn/pIguAlt+E1aELcOKdakGwk=;
        b=VmmieP3cf71LOidWfAkDzy0OGo+2k4X3bB8qUSMmoEfxjLmhg6RxJm8f8Vi76Hv1wD
         Go0yDezyYY4xPy19q2ipZK3MQ9DdSyNO9hZ1+5aqf5z0uzS+mZko0DbAZwXzTUrUN/rZ
         uSDwR+0ZFhdyah8WBJLXh09bccaAK2L7UI91QPGsEagoQrah/dsXGFFWoA2ta/Lx/aHn
         FgIhmazlzrhbpUkFp6sSPzKqq7SqHnidAyU3ioEquNZNGApDg9gCLRtRTMAwXJnFe1ZC
         JOgoXRfAlGS81IxWaPyjBXJsEb8EEj44/riEQMZkTZvdnigcQ1BI0ddt/ukQ7DGPXEkd
         memw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794225006; x=1794829806; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=u0TI0VRhkkEuzSSXfjCVwhEWLOzK7uV4x4syO3ophfI=;
        b=zaNxOew9lcNYJ57SCQn6nTYB7d/uqctXUblGqjkns1On3lRQqPTC3svmYpDewQTCAw
         nf8EVHEYJ1eDTvSyDMO9/gSNU3ywVa1heRY9t86cJ503oDfelSVkpRjUIEojnrty0xXU
         MZm5rQ9bJp6oGvOtt7OauxXIkHyQctOTy/sH/I0ITUD+tAA9tgwCQa6eBso5kLH5NoPh
         Nc2mWNK4pIDILvuU8B43orWaiFeBWQcFICvvcgU4sSosEyKzlH0xBmz940pgDjko7Vic
         bsi4uWFW95GpytRxVLwboxLW7hQfpow6JO+To0gXWv2VZLM7P0eCcDsnbQfLlWBOQvia
         x1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794225006; x=1794829806;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u0TI0VRhkkEuzSSXfjCVwhEWLOzK7uV4x4syO3ophfI=;
        b=Bmz3G50ATr7HS6HB5kumr5zm7ircBzn8plJbNfkRvRDGhthXaSeYw4vhmARlNVP3Sh
         vwNUMy/GnsDres9O4b1AVaY/UFWU80sDpYvd9WgrW+2stwgTIr6u6mdf9oydXrSBnolV
         hDTIeomadRU4HttZrazvEsg/Cy3TeJfqNXZF7zIkjk2LUviEZdGBtz10RvMsZPu1dfCP
         0IyoAmPYl51fZVNmK5XQA3nWaqj2cd3RhGhMbqtlLRhE1Fx83q2V+re0h0rg9iq8K4e8
         DsWBS1DJWCDBvbsaptjMebRS5MENLIhKFiEiZqUqEyOcnBzSTsrk4T9wvCjJLQ+mgDpb
         /DwA==
X-Forwarded-Encrypted: i=1; AL+hErF2GaDfsAI0LS63sXndEt9a5xb5Azxjf6E7vAoZkYEALZF0tOg3pEsY/9m8s9dIyMt+EYxM0wP2nmE=@lists.infradead.org
X-Gm-Message-State: APuU4Z8S2BaGgH+kHCv6IH5UfvjgvlJpWjvlK9sPqhtR1/MJKZHKuNO8
	BUAeA5p3ZfGgZqHJi8dkv6a1ar62AM11avo46gnwLCYw8PmPvd19vpgmUXkA/9Fcw61pXEH+FSC
	aDEg7o5OlQhQusUOW09IHMkBtZYq8w5A=
X-Gm-Gg: AYBFou0vGsymHW+JUKFC8cPo/jVDqYdTKvFQtMiqcqSSVTnBvp4lYzT2mphoIIA8s4D
	0vvDii6tEf8sDT6PNX3UhsN8BQAhxfLJbffANCxOcAnGJVc2g041xtEMQrrSdhUhLtFSYi/+nO/
	oVLQwMxyKgtzG84/dweeqoamsdHqe7tzcto4SEtoZ8I3ub+6hZ1vEyoJlnluel09MbcQWem2VN/
	zefD2JLTsGE2m0U6B8XYX28ED6OqQ4Rj0ggrCk8Yb1T3oj8zSxurrZeVcmDWy7nWch6/MnYcd/o
	lppk3zzspuXYBk13sYdYhKYMZh4b+wAS2Mkosji7IbNULW9AlCqFBQGrUcQH1KDunY/uIaQI4e7
	zc1Ug++sGfRnweQll414DsU9iTuLLsRI1y4eP9wrOsjd7jveU3bIhK6NglGXTFf//KuyJ
X-Received: by 2002:a05:7301:d809:10b0:36e:9773:84b9 with SMTP id
 5a478bee46e88-37256df029cmr6649578eec.23.1794225005998; Mon, 09 Nov 2026
 03:50:05 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261109113121.1534929-1-hj351016@gmail.com> <TY3PR01MB113466938179F6797D7406F0B86732@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB113466938179F6797D7406F0B86732@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: khj <hj351016@gmail.com>
Date: Mon, 9 Nov 2026 20:49:53 +0900
X-Gm-Features: AclHuK-Q7RAQrlbltV2_yA6asy4NURVFS_s2TMwZElMAGdCfnMAGwiTLjN8f_BU
Message-ID: <CAGr5VtOoyaNcLbBeZwA1gb08c1_qfvpVvWC07iEHjp5GnWFZEg@mail.gmail.com>
Subject: Re: [PATCH v2] phy: rcar-gen3-usb2: cancel OTG work on unbind to
 avoid use-after-free
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"stable@vger.kernel.org" <stable@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_035007_364461_C0BC0992 
X-CRM114-Status: GOOD (  34.06  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

IEhpIEJpanUsCgogVGhhbmtzIGZvciB0aGUgcmV2aWV3IDopCgogZGV2bV9hZGRfYWN0aW9uX29y
X3Jlc2V0KCkgcnVucyB0aGUgYWN0aW9uIG9uY2UgaW1tZWRpYXRlbHkgaWYgaXQKZmFpbHMgdG8g
cmVnaXN0ZXIgaXQsIGFuZCB0aGVuIHJldHVybnMgdGhlIGVycm9yLiBTbyBvbiBmYWlsdXJlCnJj
YXJfZ2VuM19waHlfdXNiMl9jYW5jZWxfd29yaygpIGlzIGNhbGxlZCByaWdodCBhd2F5LCBpLmUu
CmNhbmNlbF93b3JrX3N5bmMoJmNoYW5uZWwtPndvcmspLgoKIFRoYXQgaXMgc2FmZSBoZXJlOiBj
aGFubmVsLT53b3JrIGhhcyBhbHJlYWR5IGJlZW4gSU5JVF9XT1JLKCknZCBvbgp0aGUgbGluZSBh
Ym92ZSwgYW5kIHRoZSBJUlEgdGhhdCBzY2hlZHVsZXMgaXQgKHJjYXJfZ2VuM19waHlfdXNiMl9p
cnEpCmlzIG9ubHkgcmVxdWVzdGVkIGFmdGVyIHRoaXMgY2FsbCBzdWNjZWVkcywgc28gYXQgdGhh
dCBwb2ludCB0aGUgd29yawpoYXMgbmV2ZXIgYmVlbiBxdWV1ZWQuIGNhbmNlbF93b3JrX3N5bmMo
KSBvbiBhbgppbml0aWFsaXNlZC1idXQtbmV2ZXItcXVldWVkIHdvcmsgaXMgYSBuby1vcCAtLSBp
dCBqdXN0IHJldHVybnMgZmFsc2UuCihVbmxpa2UgYSB0aW1lciwgYSB3b3JrX3N0cnVjdCBoYXMg
bm8gdW5pbml0aWFsaXNlZC1vYmplY3QgY2hlY2sgb24KdGhlIGNhbmNlbCBwYXRoIG9uY2UgSU5J
VF9XT1JLKCkgaGFzIHJ1bi4pCgogU28gYm90aCBwYXRocyBhcmUgZmluZTogZWl0aGVyIGRldnJl
cyByZWdpc3RlcnMgdGhlIGNhbmNlbCBhbmQgcnVucwppdCBvbiB1bmJpbmQsIG9yIHJlZ2lzdHJh
dGlvbiBmYWlscywgdGhlIGNhbmNlbCBydW5zIG9uY2UgaW1tZWRpYXRlbHkKKGEgaGFybWxlc3Mg
bm8tb3ApLCBhbmQgcHJvYmUgcmV0dXJucyB0aGUgZXJyb3IuCgogVGhhbmtzLAogSHl1bmp1bmcK
CjIwMjbrhYQgMTHsm5QgOeydvCAo7JuUKSDsmKTtm4QgODo0NSwgQmlqdSBEYXMgPGJpanUuZGFz
Lmp6QGJwLnJlbmVzYXMuY29tPuuLmOydtCDsnpHshLE6Cj4KPiBIaSBoeXVuanVuZ2csCj4KPiBU
aGFua3MgZm9yIHRoZSBwYXRjaC4KPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
IEZyb206IGh5dW5qdW5nZyA8aGozNTEwMTZAZ21haWwuY29tPgo+ID4gU2VudDogMDkgTm92ZW1i
ZXIgMjAyNiAxMTozMQo+ID4gU3ViamVjdDogW1BBVENIIHYyXSBwaHk6IHJjYXItZ2VuMy11c2Iy
OiBjYW5jZWwgT1RHIHdvcmsgb24gdW5iaW5kIHRvIGF2b2lkIHVzZS1hZnRlci1mcmVlCj4gPgo+
ID4gRnJvbTogSHl1bmp1bmcgS28gPGhqMzUxMDE2QGdtYWlsLmNvbT4KPiA+Cj4gPiBUaGUgT1RH
IHJvbGUvVkJVUyBpbnRlcnJ1cHQgKHJjYXJfZ2VuM19waHlfdXNiMl9pcnEpIGFuZCB0aGUgcm9s
ZSBzeXNmcyBhdHRyaWJ1dGUgc2NoZWR1bGUgY2hhbm5lbC0KPiA+ID53b3JrIChyY2FyX2dlbjNf
cGh5X3VzYjJfd29yayksIHdob3NlIGhhbmRsZXIgZGVyZWZlcmVuY2VzIHRoZSBjaGFubmVsIChj
aC0+ZXh0Y29uKS4gVGhlIGNoYW5uZWwgaXMKPiA+IGRldm0tYWxsb2NhdGVkLCBzbyBpdCBpcyBm
cmVlZCBhdCB1bmJpbmQsIGJ1dCBub3RoaW5nIGNhbmNlbHMgY2hhbm5lbC0+d29yazoKPiA+IHJj
YXJfZ2VuM19waHlfdXNiMl9yZW1vdmUoKSBvbmx5IGRyb3BzIHRoZSByb2xlIHN5c2ZzIGZpbGUu
IEEgd29yayBzY2hlZHVsZWQganVzdCBiZWZvcmUgdW5iaW5kIGNhbgo+ID4gcnVuIGFmdGVyIHRo
ZSBjaGFubmVsIGhhcyBiZWVuIGZyZWVkLCBhIHVzZS1hZnRlci1mcmVlLgo+ID4KPiA+IENhbmNl
bCB0aGUgd29yayB2aWEgZGV2bSwgcmVnaXN0ZXJlZCBiZWZvcmUgdGhlIGludGVycnVwdCBpcyBy
ZXF1ZXN0ZWQgc28gdGhhdCBvbiB1bmJpbmQgZGV2bSBmcmVlcwo+ID4gdGhlIGludGVycnVwdCBm
aXJzdCAobm8gbmV3IHdvcmsgY2FuIGJlCj4gPiBzY2hlZHVsZWQpIGFuZCB0aGVuIHJ1bnMgdGhl
IGNhbmNlbCBhY3Rpb24gYmVmb3JlIHRoZSBjaGFubmVsIGlzIGZyZWVkLgo+ID4KPiA+IEZpeGVz
OiBjMTRmOGE0MDMyZWYgKCJwaHk6IHJjYXItZ2VuMy11c2IyOiBmaXggbXV0ZXhfbG9jayBjYWxs
aW5nIGluIGludGVycnVwdCIpCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+ID4gU2ln
bmVkLW9mZi1ieTogSHl1bmp1bmcgS28gPGhqMzUxMDE2QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4g
Q2hhbmdlcyBpbiB2MiAodGhhbmtzIHRvIHRoZSBTYXNoaWtvIEFJIHJldmlldyk6Cj4gPiAgLSBj
b3JyZWN0IHRoZSBGaXhlczogdGFnIHRvIGMxNGY4YTQwMzJlZiwgd2hpY2ggaW50cm9kdWNlZCBj
aGFubmVsLT53b3JrCj4gPiAgICBhbmQgcmNhcl9nZW4zX3BoeV91c2IyX3dvcmsoKSwgcmF0aGVy
IHRoYW4gMmIzODU0M2M4ZGIxIHdoaWNoIG9ubHkgYWRkZWQKPiA+ICAgIHN5bmNocm9ub3VzIGV4
dGNvbiBoYW5kbGluZwo+ID4gIGRyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2Iy
LmMgfCAxOCArKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2Fy
LWdlbjMtdXNiMi5jIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+
ID4gaW5kZXggYjViYTc1MS4uMzVlNTE5YSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3Jl
bmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMv
cGh5LXJjYXItZ2VuMy11c2IyLmMKPiA+IEBAIC0xMTcxLDYgKzExNzEsMTMgQEAgc3RhdGljIGlu
dCByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19yZWd1bGF0b3JfcmVnaXN0ZXIoc3RydWN0IHJjYXJf
Z2VuM19jaGFuCj4gPiAqY2hhCj4gPiAgICAgICByZXR1cm4gcmNhcl9nZW4zX3BoeV91c2IyX3Zi
dXNfcmVndWxhdG9yX2dldF9leGNsdXNpdmVfZW5hYmxlKGNoYW5uZWwsIGVuYWJsZSk7ICB9Cj4g
Pgo+ID4gK3N0YXRpYyB2b2lkIHJjYXJfZ2VuM19waHlfdXNiMl9jYW5jZWxfd29yayh2b2lkICpk
YXRhKSB7Cj4gPiArICAgICBzdHJ1Y3QgcmNhcl9nZW4zX2NoYW4gKmNoYW5uZWwgPSBkYXRhOwo+
ID4gKwo+ID4gKyAgICAgY2FuY2VsX3dvcmtfc3luYygmY2hhbm5lbC0+d29yayk7Cj4gPiArfQo+
ID4gKwo+ID4gIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpICB7Cj4gPiAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRl
di0+ZGV2Owo+ID4gQEAgLTEyNzcsNiArMTI4NCwxNyBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19w
aHlfdXNiMl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICAgICAgICAg
ICAgICByZXR1cm4gaXJxOwo+ID4gICAgICAgfSBlbHNlIGlmIChpcnEgPiAwKSB7Cj4gPiAgICAg
ICAgICAgICAgIElOSVRfV09SSygmY2hhbm5lbC0+d29yaywgcmNhcl9nZW4zX3BoeV91c2IyX3dv
cmspOwo+ID4gKyAgICAgICAgICAgICAvKgo+ID4gKyAgICAgICAgICAgICAgKiBSZWdpc3RlcmVk
IGJlZm9yZSB0aGUgSVJRIHNvIHRoYXQsIG9uIHVuYmluZCwgZGV2bSBmcmVlcyB0aGUKPiA+ICsg
ICAgICAgICAgICAgICogSVJRIGZpcnN0IChubyBtb3JlIHdvcmsgY2FuIGJlIHNjaGVkdWxlZCkg
YW5kIHRoZW4gY2FuY2VscyBhbnkKPiA+ICsgICAgICAgICAgICAgICogd29yayBzdGlsbCBwZW5k
aW5nIGJlZm9yZSB0aGUgY2hhbm5lbCBpcyBmcmVlZC4KPiA+ICsgICAgICAgICAgICAgICovCj4g
PiArICAgICAgICAgICAgIHJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChkZXYsCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByY2FyX2dlbjNfcGh5
X3VzYjJfY2FuY2VsX3dvcmssCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjaGFubmVsKTsKPiA+ICsgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPgo+IEkgaGF2ZSBhIHF1ZXN0aW9uLAo+
Cj4gV2hhdCBoYXBwZW5zIGlmIHRoaXMgcmV0dXJuIGVycm9yPyBJcyBpdCBvayB0byBjYWxsCj4g
Y2FuY2VsX3dvcmtfc3luYygpIGJlZm9yZSBzY2hlZHVsaW5nIGl0Pwo+Cj4gQ2hlZXJzLAo+IEJp
anUKPgo+ID4gKwo+ID4gICAgICAgICAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKGRldiwg
aXJxLCByY2FyX2dlbjNfcGh5X3VzYjJfaXJxLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIElSUUZfU0hBUkVELCBkZXZfbmFtZShkZXYpLCBjaGFubmVsKTsKPiA+ICAg
ICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gPiAtLQo+ID4gMi40My4wCj4gPgo+CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
