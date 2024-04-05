Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB455CD1284
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnDvmiMNIGu6DZl4e094oAgkVWv8oEgbqTtABOWoNd4=; b=BIGHCf2LoWVRbm
	3MWBdjIPAZhyb8JMZNRebHr6cWZtgOnMRVj/7BaAHjY19QT0ASajukxlc3ngPpJB/a1utTk/DvgE9
	c8cbqzCI0pAV9X3qquTwpYLkEQgbqGO6t3fH0DXeIn3WEHhDdNJN6FhCQlt2xVngoUCyQ/dCS8c4u
	oebXNGpmQ6FSU7O6jhSB0lxYRqRhNwfELpNJ5pVytrxYNmm11tE6iDj2e6WiQQkozeU9sRUOJkzSK
	7GON0YfMnawBkYJu5nHHKACL2ckwcYT3e4jjnPsFJo8olD5OG4ujwegJ/Gk+aGQ/a7PueLQoY6hQf
	evwC01itfcLidNKkM+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdd7-00000005ahM-1Gra;
	Fri, 05 Apr 2024 07:04:53 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsdd4-00000005afU-0kfj
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 07:04:51 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3436b096690so2197625f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 00:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712300687; x=1712905487; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ck0+pssPiWzof/P+3eKb2RoFHftHMIJF3LhSjby3XvY=;
        b=uFteiXFyAAp7Wyzo4fyRmqs5jRmty5tQsap8laicrxiXP74tS7HmMjk+NkClfYtNRx
         gbecnyxTbLD0bMNReMi2lAwyJ2UyKUl31oK5wX7bHterpihK8c9wpswewNaO5oE4MhTK
         sLTnwBWzPN2WKZHdv2Nq8a7rSFWog5Cq66MhZNLFSZwlDJj+mkW4P0Ifscort4eKvEbV
         xWvtuGWdrHypRZOITU5fWU7dW/ynqTKjAsNcg4Sh0DqFhVUW073IbwPteuGFPcDYJD4V
         mJ8dYtzRxpY2fwzHQYPiRRp3U3JljMR0YHlR6MxIcZ2/RdEfLwBsJxgfHuuYa+CNQ0vs
         4ZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712300687; x=1712905487;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ck0+pssPiWzof/P+3eKb2RoFHftHMIJF3LhSjby3XvY=;
        b=hofK83k94Nx1wMBxJm4i7dNv0zZWb6NB+WZs5wtnwdXnx5rYyWdiplz4WfN87h+p6O
         jJL0KhbXLZ1eom0gCHZr+PmaGlK/gBYNMzRLmR7u4JSsxk9uOhHIFtIO6OCUDNTOBDL0
         /wxk28DAy7NPYam5Pj1a+J49hnV/yFqc0wozDXmDl/ukLTWu3pPGqDCs+vJ+G2ylm6gf
         CgnDKEk9WM4WV6Ih0CsGrt4ZBx/gDhQ6NsKKLprRZGOZ70nx/TfL/DTkllkmzZUzS5Gr
         5myjOgdiW4302WneJY8z2C+sUIpWDe7JukciePAAwp5ktVXVtAp75DKQJs4XwzmdKvp0
         /CVw==
X-Forwarded-Encrypted: i=1; AJvYcCXhzs38bO1Y9l7/0DG5HS44QdjKFlopNcVxrrIsjxUKCipj2jF0/3nMFFlT3jzDptAJQEhil+LJYa0P3H1LQOADzuY6PsY8blMBuOicAQ==
X-Gm-Message-State: AOJu0YyUMqLyMMZ7IsUBczHshmbj6WZkCWsbstcSKmRNQMGcl/IxKM/d
	tWse8XhzzLCnoUVML2miSAuxC+PEPVw+Sdcaq0yCGb6wBDp3Y8mHDwslRzXJuO8=
X-Google-Smtp-Source: AGHT+IFTmsq/286Yc5zD2qEA6UxgJfpqI99lGS+nfprpglgj+BBT5krGkx7W6lXqCOGwT9UlqIdn8w==
X-Received: by 2002:adf:ed46:0:b0:343:8097:213d with SMTP id u6-20020adfed46000000b003438097213dmr1322402wro.20.1712300687376;
        Fri, 05 Apr 2024 00:04:47 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id n6-20020a5d6606000000b0033e745b8bcfsm1247138wru.88.2024.04.05.00.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:04:46 -0700 (PDT)
Message-ID: <95bcdc942cba564f78a6f2fe4cde892575838d5c.camel@linaro.org>
Subject: Re: [PATCH 09/17] phy: samsung-ufs: use
 exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:04:44 +0100
In-Reply-To: <20240404122559.898930-10-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-10-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_000450_248974_1F18ED34 
X-CRM114-Status: GOOD (  12.11  )
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

T24gVGh1LCAyMDI0LTA0LTA0IGF0IDEzOjI1ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IFRoaXMgYWxsb3dzIHVzIHRvIG9idGFpbiBhIFBNVSByZWdtYXAgdGhhdCBpcyBjcmVhdGVkIGJ5
IHRoZSBleHlub3MtcG11Cj4gZHJpdmVyLiBQbGF0Zm9ybXMgc3VjaCBhcyBnczEwMSByZXF1aXJl
IGV4eW5vcy1wbXUgY3JlYXRlZCByZWdtYXAgdG8KPiBpc3N1ZSBTTUMgY2FsbHMgZm9yIFBNVSBy
ZWdpc3RlciBhY2Nlc3Nlcy4gRXhpc3RpbmcgcGxhdGZvcm1zIHN0aWxsIGdldAo+IGEgTU1JTyBy
ZWdtYXAgYXMgYmVmb3JlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVy
LmdyaWZmaW5AbGluYXJvLm9yZz4KPiAtLS0KPiDCoGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNh
bXN1bmctdWZzLmMgfCA1ICsrKy0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3Bo
eS1zYW1zdW5nLXVmcy5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYwo+
IGluZGV4IDE4M2M4OGUzZDFlYy4uYzU2N2VmYWZjMzBmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMKPiArKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1zYW1zdW5nLXVmcy5jCj4gQEAgLTE4LDYgKzE4LDcgQEAKPiDCoCNpbmNsdWRlIDxsaW51
eC9waHkvcGh5Lmg+Cj4gwqAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gwqAj
aW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zb2Mvc2Ftc3VuZy9l
eHlub3MtcG11Lmg+CgpZb3UgY2FuIG5vdyBkcm9wIHRoZSBpbmNsdWRlIG9mIGxpbnV4L21mZC9z
eXNjb24uaAoKT25jZSBkb25lLCBmZWVsIGZyZWUgdG8gYWRkCgpSZXZpZXdlZC1ieTogQW5kcsOp
IERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCj4gwqAKPiDCoCNpbmNsdWRlICJw
aHktc2Ftc3VuZy11ZnMuaCIKPiDCoAo+IEBAIC0yNTUsOCArMjU2LDggQEAgc3RhdGljIGludCBz
YW1zdW5nX3Vmc19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiDCoAkJ
Z290byBvdXQ7Cj4gwqAJfQo+IMKgCj4gLQlwaHktPnJlZ19wbXUgPSBzeXNjb25fcmVnbWFwX2xv
b2t1cF9ieV9waGFuZGxlKAo+IC0JCQkJZGV2LT5vZl9ub2RlLCAic2Ftc3VuZyxwbXUtc3lzY29u
Iik7Cj4gKwlwaHktPnJlZ19wbXUgPSBleHlub3NfZ2V0X3BtdV9yZWdtYXBfYnlfcGhhbmRsZShk
ZXYtPm9mX25vZGUsCj4gKwkJCQkJCQkic2Ftc3VuZyxwbXUtc3lzY29uIik7Cj4gwqAJaWYgKElT
X0VSUihwaHktPnJlZ19wbXUpKSB7Cj4gwqAJCWVyciA9IFBUUl9FUlIocGh5LT5yZWdfcG11KTsK
PiDCoAkJZGV2X2VycihkZXYsICJmYWlsZWQgc3lzY29uIHJlbWFwIGZvciBwbXVcbiIpOwoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
