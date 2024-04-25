Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 199E0C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 12:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hp0Z6uGOhZm7XfAAJkhdbhqWnIGC7dCgVyTF3ruU9Y=; b=YtkqIOCdCpGS8T
	/IJXSfCXQ7SB/DGKWl1JE8YpMQgQdO4nG4lIJAAswR6f76EZJKKl9mJr7eofcSB+QrDdcOodgQo5D
	i5PLgrY9Ne+CJNackFS7dVPN/Q4X24FegnWUsaEJcT2K9ZGzl+7pwL/7P24263+C4vawkXCUZpa6V
	iSo2bTps8iQWMpAmSg44j1dZrt+yAyhdcWB2zw21e6ZPZHd19mEKT3APVeOuM7GXO/b1Dfh+qPgSE
	OIv+b3IoOGToClqiAScEWEUnHh7s7FS8kfSF3ifHe+7gfhUXGgNd0cJiW0L5tQ5WpAIhKxfJYI3bQ
	Rc+pTx0TBAAMvXEIdz1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzy4k-00000008BkD-3LOk;
	Thu, 25 Apr 2024 12:19:42 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzy4g-00000008BiC-0uAX
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 12:19:39 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-34b64b7728cso745764f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 05:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714047576; x=1714652376; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fH6Ge321Em8jNgYwUzy/eyUsQfoQQSDtSXKHNcV0zg0=;
        b=ePUy0V6rEvUo8tAOzf8QYgUCGI9RN3g9NLEEtLOZhBAWz5LBqSVbLeyVDVnkMRWRVd
         GRx4spRjFf6zEsZR6x93MuB5KWRUx57QoBGbLRlG/pGZMh8s6+CW5StAJa/7mAY9Kbbp
         cFVkjyQ9ARwuuVl0oHs1SzdEOruPpzVTSlxup2m22+8syMzMYx3B8GVdCHUZE9iDiiM8
         EMv+meKXUa5TfE5aL2UL/3Kr71ipwSHgPdLnQNOd2E+KDxzZKaZcPnqwBJZTUK5eHhUD
         PdBzDDqrZKdCeODXP2E4C1UYJ3e0dpRXEnXwgvGcJnVZdgXOaGaUu4PuDFipZr35xaXh
         5tkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714047576; x=1714652376;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fH6Ge321Em8jNgYwUzy/eyUsQfoQQSDtSXKHNcV0zg0=;
        b=qxnK1RG7x3s7X+DaNJFsaS9LTC5/8HrwBwb3xR0DAER0ENCiy14iV19boK3c9ypsox
         YSMCtnfCEatJBcr5Xla43TppNR0kCK80hwYpEvDprr9y7VwQSi6s5vj4F3XrjXRftHBq
         9tBOCcHY0a9pEKQziIhjPuRoCe+iFEFRhQVsBiAGGYBVf9QwmfAhWpL2F0T4yfYBKaL1
         3G2hYtatNz1TadQGfE4HmL24nOc1K3XNicTIujU6s9qDBlHbpaloSiHN5GTXQnd58j8o
         DmQy+FUHn+g12O3HIzsawdK8k1e9i+LeCm9Tl+2etN6L92wugbT49MGbk9N1sbQJrm5V
         NDGA==
X-Forwarded-Encrypted: i=1; AJvYcCVFrU36rJJgwHrcENDkhTHbQoHYYkRe2nUpTgHaANkDSQUpRo1aWnKT2XBNODzvfbi8F+Io05j4olzliWNktngg2rfVO7j+tg4lESG6Vg==
X-Gm-Message-State: AOJu0YxwDkwNaP0qpW7BC8S1lNDbHJXr1GM11YK2EyE7/YiFNtq70edt
	WkCwn/O+Jmr+Qsa2XbX6n+U4yS6bubFe1gWJIK2T6VGmJpQ4f/kBH+0BOdJ2qSI=
X-Google-Smtp-Source: AGHT+IE2TH+pN7yy08jvuwgtvA2UNlAOwg1IRTXuZTpSF7RMUOppxvhcrI4dU+bpkMR6oChsLtEGUA==
X-Received: by 2002:a5d:5984:0:b0:34c:d80:5da5 with SMTP id n4-20020a5d5984000000b0034c0d805da5mr1283469wri.55.1714047576275;
        Thu, 25 Apr 2024 05:19:36 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d49ca000000b0034bfc32a4f6sm2019801wrs.48.2024.04.25.05.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 05:19:35 -0700 (PDT)
Message-ID: <375fef8d5811d88a0024e44262bac7c702bdb72e.camel@linaro.org>
Subject: Re: [PATCH v2 01/14] dt-bindings: clock: google,gs101-clock:  add
 HSI2 clock management unit
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>, Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 alim.akhtar@samsung.com,  avri.altman@wdc.com, bvanassche@acm.org,
 s.nawrocki@samsung.com,  cw00.choi@samsung.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com,  James.Bottomley@hansenpartnership.com,
 ebiggers@kernel.org,  linux-scsi@vger.kernel.org,
 linux-phy@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org,  linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 tudor.ambarus@linaro.org,  saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 13:19:34 +0100
In-Reply-To: <20240424195144.GA360683-robh@kernel.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-2-peter.griffin@linaro.org>
	 <20240424195144.GA360683-robh@kernel.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051938_353942_4E229D2D 
X-CRM114-Status: GOOD (  10.60  )
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

T24gV2VkLCAyMDI0LTA0LTI0IGF0IDE0OjUxIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiBP
biBUdWUsIEFwciAyMywgMjAyNCBhdCAwOTo0OTo1M1BNICswMTAwLCBQZXRlciBHcmlmZmluIHdy
b3RlOgo+ID4gQWRkIGR0IHNjaGVtYSBkb2N1bWVudGF0aW9uIGFuZCBjbG9jayBJRHMgZm9yIHRo
ZSBIaWdoIFNwZWVkIEludGVyZmFjZQo+ID4gMiAoSFNJMikgY2xvY2sgbWFuYWdlbWVudCB1bml0
LiBUaGlzIENNVSBmZWVkcyBoaWdoIHNwZWVkIGludGVyZmFjZXMKPiA+IHN1Y2ggYXMgUENJZSBh
bmQgVUZTLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlm
ZmluQGxpbmFyby5vcmc+Cj4gPiBSZXZpZXdlZC1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRy
YXN6aWtAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gwqAuLi4vYmluZGluZ3MvY2xvY2svZ29vZ2xl
LGdzMTAxLWNsb2NrLnlhbWzCoMKgwqAgfCAzMCArKysrKysrKy0KPiA+IMKgaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9nb29nbGUsZ3MxMDEuaMKgwqDCoMKgwqAgfCA2MyArKysrKysrKysrKysr
KysrKysrCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgOTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBUaGlzIGNvbGxpZGVzIHdpdGggQW5kcsOpJ3Mgd29yayBhZGRpbmcgSFNJMC4g
UGVyaGFwcyBjb21iaW5lIHRoZSBzZXJpZXMgCj4gb3IgZXZlbiB0aGUgcGF0Y2hlcyBhbmQganVz
dCBzZW5kIGNsb2NrcyBhcyBhIHNlcmllcy4gVGhlbiBpdCBpcyBjbGVhciAKPiB3aG8gc2hvdWxk
IG1lcmdlIGl0LgoKSSdsbCBhZGQgUGV0ZXIncyBjbG9jay1yZWxhdGVkIEhTSTIgcGF0Y2hlcyBp
bnRvIG15IEhTSTAgc2VyaWVzLCB3aGljaCB3aWxsCmF2b2lkIG1vcmUgbWVyZ2UgY29uZmxpY3Rz
LgoKCkNoZWVycywKQW5kcmUnCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
