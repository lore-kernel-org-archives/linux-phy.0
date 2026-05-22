Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D68CD5BB1
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 08:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZvSL0KAXmoIJK1wa6pmGVWszyYoXcoc1/DT8m+otDo=; b=jnzTubQJBAdYuc
	lf7lQzpAQh33UtpW3XGpgLBErvX8wO0lUTp2TAUXrJVY0DW5OzPzfk/0D5Xi609zFIvJmb/lFHdNK
	zT4m4xzyNfNJb+SLKPt8j8+C+sLP9dxdolmLq2tEN2yu183nCkKFROgBfSqeN7kH5emlW/N3kpPBJ
	+6Clja0eS9kFkDILdh4B7/ocRpPa6vA8ADxoWRo3Pq5kVVBAm7eyycBXRo6p70DzPOjS1SHYIgnba
	7evLN72eqpRs1BAxnY7p40v+1udG5c82QZGNgOrJ07Y8r72ROBGfB3V7sntyPkLzEDp98S1QvQXK8
	Fpmya3ky5UklKnm75pOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQL0j-0000000AAWV-2S8B;
	Fri, 22 May 2026 08:13:37 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQL0g-0000000AAVh-1l9u
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 08:13:36 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-49041fb8c23so4254725e9.0
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 01:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779437612; x=1780042412; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=krd+xtZLkefnPN4mdCrGXGZmFdEnpHSMkyhgQXQ9R4M=;
        b=JPRRPnZ6kZ8z2Z8E38cXS+zYc+lPzHF9TCm2imlzkaI224pluVY6xPbsM7aZ1gJi2y
         g5+lLZRhNvhp+5bcK72EnEwpJadZDTxb61urAIXSRy2YKaFJ6VARMQlAhXNi7UUrmNc4
         kX0pufhVVViIM8e+fBa2rNixeB4+GY6EFLLWDevQ3bpMYfHj9aYGc5TT70NwxxcbXqU8
         uRbbE3qytGie92hJtxMsQO8cZLnFvSudMr0CQy7rikPACiH88nOOeDqJsrsQug65Dwia
         3CYGmSJ/Nj0iRgMlVrklRg6AGu/Q5FSneCmDZEi/6//Y02J+zleRt9eCvuF4QcVZO0CO
         mXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779437612; x=1780042412;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=krd+xtZLkefnPN4mdCrGXGZmFdEnpHSMkyhgQXQ9R4M=;
        b=Vidd0vbaGeffgM9UnmbrkD8TKBBudtx0LqWTFgyYGZHL5SO7HAWPBe12ha++HMz03t
         KNkOmMB9ED8tuIP5LPb8xHtdCEU9/vETlEDvovynhktkkE2L89W8tlhZfIbWxkc4+6zV
         Kkj55dPlwp0HHNvqmzAyoELHvgotPLv7NGoqJNCvKPl+vTiGndGZuGTq9OidHHuA3b63
         pkV5qpKFU+wVZor0Vy3vETSvb56Yi2A9gK4w7gLNeyfmMPcGKGr0h4I+1ybGUZaCMZzu
         bsxmgrWGiAPbCAj/JFh4Z8WeqBDz3tU7d7zC+UZ5C5Dy2AgH3rm7334yUKhb8xwtz75+
         vRtA==
X-Forwarded-Encrypted: i=1; AFNElJ850DlBb+yFuFNwglMtWsj9+AvMFrmzMB/rhDPOHW0ZSBXJpWGM+AKhv8mUf/ow44yFVxiK7L12wVk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyylsZYhVfeQftahJrA0GtebdgPnYqk/icIC2sOea9JXCCCu4C0
	RJLLdgU+M6BGTL2lWkfLuac+pluQvsGr6+dolluBWgJA3Qgfd2L8KvI3
X-Gm-Gg: Acq92OHD1iMukC55qnX3ZFn6xJsyU3F9ARp8wLOHyeIKPMMtIOMI4E44CWtcfr9wVu+
	l9B9ZtMlDal2qe0X6ldQuiK0tl64CWL/oOpk4pmcaZKSBWvWeLwzwij+99zohYsbpDOAUkKaXyU
	/RG71GmjrRQwEojZJ8pi+206fwVYPVdpXkIakkGNBTSv0d11CbANBWhcZpPr0K4+36GO1930Qqv
	SSUkfpmcLut3DpsQ1O08V/f5m7YZa4HOjXyE4wVb9nwa2MILogcEWVbL3/4anAxj0SMM9SFOh7H
	Orqe0ONrmgzVw1k+uIfBsJp9bckOrSwIIueWQO5wXJhQ82j3pPLkfiv2y4+1N5uywBlB0Wc2f4a
	fqSGxz/e3RAZ5kWLVh05AojVGz+SLISq0r+vXdtVi8LR/PFyczDecq39XZ1Vc9Dp9ALGWUpMvse
	luN2rbgeHsyV+nd+SOf1bg
X-Received: by 2002:a05:600c:c04b:20b0:490:3cec:52f6 with SMTP id 5b1f17b1804b1-490424ac920mr21743465e9.2.1779437611814;
        Fri, 22 May 2026 01:13:31 -0700 (PDT)
Received: from legfed1 ([2a00:79c0:61a:3200:1ebe:eb51:3a97:3b47])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49045620c05sm24502425e9.14.2026.05.22.01.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 01:13:31 -0700 (PDT)
Date: Fri, 22 May 2026 10:13:29 +0200
From: Dimitri Fedrau <dima.fedrau@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>,
	linux-phy@lists.infradead.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com,
	robh@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
Message-ID: <20260522081329.GA1983692@legfed1>
References: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
 <20260514051738.B2D32C2BCB7@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260514051738.B2D32C2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_011334_507339_7AD4B6BA 
X-CRM114-Status: GOOD (  19.68  )
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

QW0gVGh1LCBNYXkgMTQsIDIwMjYgYXQgMDU6MTc6MzhBTSArMDAwMCBzY2hyaWViIHNhc2hpa28t
Ym90QGtlcm5lbC5vcmc6Cj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlr
byBBSSByZXZpZXcgZm91bmQgMiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBb
TWVkaXVtXSBUaGUgZHQtYmluZGluZyBvbWl0cyBzdXBwb3J0IGZvciB0aGUgYG1heC1iaXRyYXRl
YCBwcm9wZXJ0eS4KPiAtIFtNZWRpdW1dIFRoZSBkdC1iaW5kaW5nIG9taXRzIHN1cHBvcnQgZm9y
IHRoZSBgaW50ZXJydXB0c2AgcHJvcGVydHkgZm9yIHdha2UtdXAgcm91dGluZy4KPiAtLQo+IAo+
IGNvbW1pdCA4NTNhZDdjOTNlYmUxYzJhNjI1ZGRkZGRlNDAxYzRhYWFkNDk2YThlCj4gQXV0aG9y
OiBEaW1pdHJpIEZlZHJhdSA8ZGltaXRyaS5mZWRyYXVAbGllYmhlcnIuY29tPgo+IAo+IGR0LWJp
bmRpbmdzOiBwaHk6IGFkZCBzdXBwb3J0IGZvciBOWFBzIFRKQTExNDUgQ0FOIHRyYW5zY2VpdmVy
Cj4gCj4gVGhpcyBjb21taXQgYWRkcyBkb2N1bWVudGF0aW9uIGZvciB0aGUgTlhQIFRKQTExNDUg
Q0FOIHRyYW5zY2VpdmVyLCByZXNpZGluZwo+IGluIHRoZSBnZW5lcmljIFBIWSBzdWJzeXN0ZW0g
YmluZGluZ3MuIEl0IGRlc2NyaWJlcyB0aGUgcmVxdWlyZWQgU1BJCj4gY29uZmlndXJhdGlvbnMg
YW5kIHN1cHBseSBwcm9wZXJ0aWVzIGZvciB0aGUgZGV2aWNlLgo+IAo+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnhwLHRqYTExNDUueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnhwLHRqYTExNDUueWFtbAo+
ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnhwLHRqYTExNDUueWFtbAo+IAo+IFsg
Li4uIF0KPiAKPiA+ICsgIHZiYXQtc3VwcGx5Ogo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsg
ICAgICBCYXR0ZXJ5IHN1cHBseSB2b2x0YWdlCj4gPiArCj4gPiArcmVxdWlyZWQ6Cj4gPiArICAt
IGNvbXBhdGlibGUKPiA+ICsgIC0gcmVnCj4gPiArICAtICIjcGh5LWNlbGxzIgo+ID4gKyAgLSBz
cGktY3BoYQo+ID4gKwo+ID4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+IAo+IERvZXMg
dGhpcyBiaW5kaW5nIG5lZWQgdG8gaW5jbHVkZSB0aGUgbWF4LWJpdHJhdGUgcHJvcGVydHk/Cj4K
Tm8sIHRoZSBtYXggYml0cmF0ZSBpcyBrbm93IGZvciB0aGUgZGV2aWNlLiBTZWU6Cmh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8wYjRiODI5MS00MGNmLTRmYWYtYTc5Zi00OGM1NjY3
N2Y5YTJAa2VybmVsLm9yZy8KCj4gVGhpcyBwcm9wZXJ0eSBpcyBzdGFuZGFyZCBmb3IgQ0FOIHRy
YW5zY2VpdmVycyB0byBkZXNjcmliZSBib2FyZC1sZXZlbAo+IGNhcGFiaWxpdHkgY29uc3RyYWlu
dHMgd2hlcmUgdGhlIGxheW91dCBjYW5ub3Qgc3VwcG9ydCB0aGUgY2hpcCdzIHRoZW9yZXRpY2Fs
Cj4gbWF4aW11bSBzcGVlZC4gU2luY2UgYWRkaXRpb25hbFByb3BlcnRpZXMgaXMgc2V0IHRvIGZh
bHNlLCB2YWxpZCBkZXZpY2UgdHJlZXMKPiBzcGVjaWZ5aW5nIGEgbWF4aW11bSBiaXRyYXRlIHdp
bGwgZmFpbCB2YWxpZGF0aW9uLgo+IAo+IEFsc28sIGRvZXMgdGhpcyBkZXZpY2UgdHJlZSBiaW5k
aW5nIG5lZWQgc3VwcG9ydCBmb3IgdGhlIGludGVycnVwdHMgcHJvcGVydHk/Cj4gCk5vdCBhdCB0
aGUgbW9tZW50LCB0aGlzIGNhbiBiZSBhZGRlZCBsYXRlciBvbiB3aGVuIHRoZXJlIGlzIGFuCmlt
cGxlbWVudGF0aW9uIGZvciB0aGlzIGZlYXR1cmVzLgoKPiBUaGUgVEpBMTE0NSBzdXBwb3J0cyBw
YXJ0aWFsIG5ldHdvcmtpbmcgYW5kIHdha2UtdXAgZnVuY3Rpb25hbGl0eSwgd2hpY2ggY2FuCj4g
cm91dGUgYSB3YWtlLXVwIHNpZ25hbCB0byBhbiBpbnRlcnJ1cHQgbGluZSBvbiB0aGUgaG9zdCBw
cm9jZXNzb3IuIFdpdGgKPiBhZGRpdGlvbmFsUHJvcGVydGllcyBzZXQgdG8gZmFsc2UsIGl0IGlz
IGltcG9zc2libGUgdG8gZGVzY3JpYmUgdGhpcyBoYXJkd2FyZQo+IGludGVycnVwdCByb3V0aW5n
IGluIHRoZSBkZXZpY2UgdHJlZS4KPiAKPiAtLSAKPiBTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTMtdGphMTE0NS1zdXBwb3J0LXY1LTAt
Mzg3MjBhN2VlNjNlQGxpZWJoZXJyLmNvbT9wYXJ0PTEKPiAKPiAtLSAKPiBsaW51eC1waHkgbWFp
bGluZyBsaXN0Cj4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
