Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E72D6C3601E
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 04:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SQrBVwaTOZ3W7ZVnMNKUYPP1YE19xcQDIFwxVqclB0=; b=f+itjS1YTYhqH5
	tkmMn8K+fXGfn5cOltJL1OuHHvlUhpsWBydILg7Ja7b8BrSEpLW5MRGOob6/KaYv4D7UYdbAz0B3l
	/8OWresJ6Be8wlEccOVDX1Y19M9DCl052hZjPYeUVdAQuaibFUXhQ2WesCmKE2QJaofrki5lqKCxw
	GplWOaXZa7eAWfTEsrr1ZJh28JFLOYmegd4lwfgfKBjI6vFF+NwvMfcnsS+hHSRuTWZGSdur5fPDC
	OwxZlLKRHKc5vexXEEymOESykWozd+3tDL4CinINbjT+GCxOs0b8ccefzSneGJLUIG3TwPv7DVHGu
	9lNsxrOUvcZ8kN/fPzUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Bh8-00000000f75-1Bnp;
	Mon, 14 Apr 2025 04:45:18 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Bh5-00000000f6W-04t7
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 04:45:16 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-31062172698so8780111fa.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Apr 2025 21:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744605913; x=1745210713; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yc3jiQ8kZxV+LcAN0rkQAoQqLmjbhOlTCeWE9SKAIWI=;
        b=dkGF8u1yT9vuKD4ScWWEib5PVovGd6BKI6HeGTzBdlNIQJmnejIvQsgUxKNfmStC57
         i1NG6DFfbVKF3TAEZaLwMvYmA+y9dwrP3xW3CoS29rKoNlAp1fagMaFoT4hMXDq2StMf
         UOZ/P2zlh4D0RyOE6g2XxghPGNKk/8NILO5R9Y5wOkITDZeJ1L10ds2O5tI22gZ3OOdV
         IvS1o9SX/UjH9Z9YZq8U/fU/WuieXS/0df44C2EpR4lMJY+5LTs8h+I2Fq4Wp3YNR6Qg
         qWAnn4hGOauH96haQCEm5Yhi/LScWl0DKNgjloyGDofaIUBUUczRT/2/OirqxzwyNLn5
         RWCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744605913; x=1745210713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yc3jiQ8kZxV+LcAN0rkQAoQqLmjbhOlTCeWE9SKAIWI=;
        b=Qo+bqN7vIVljNvSeoMn94+STTwyQgeurzCqsyYwQL+OrMYRjCspAiVyoNbckCWckiL
         fCQxcZF/NIdL9uI+4BmtjX3fbW9WL2+YN+IR1TnDPUQXwXj13L96+iluW6x5VzAzhYzt
         ay5J6D3HlDVSL68w8M0FjC3UiwkGXFTiAoEGw1R8xwFtVQ+gyLxyrolKZwGQzbMPDt7i
         Xz35JmTjdGGQdOdjiXfi6N5fKM+hlGw73NuepuXyvVSgeGxLQLkaiF4i4S2SlYcyv+FT
         Rou90f71aDl7TCKhCdQH4eN1kC1e5U+YDsvneN9KjCgV4R1g0yZBgh6JAYGQZ5hi6rEH
         Ncww==
X-Forwarded-Encrypted: i=1; AJvYcCV2C3xG8EEybipzJRw3eV/KjpBk02895XJ84oJE594pRXF9ZrFvX28d+JNNmsS7VzkfYY4UiILBLNM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWacAUOjJVFoeO1uThT1G86vSwF4cENtKqZwo07XTlIqGwEiad
	X+JHwTpBujoy8sY/ATZpDMlxer0oRAkZ7TryUmwzDwWYe88PUye5aU2W65V2+NA8u0gg73FmYNN
	lnMwTWN1KP0iviA4+sUZdB17Y6CM=
X-Gm-Gg: ASbGncvUeMkZDgFaFPMQMIX915IkCHrJ3S5gA9YDMrWEzF3cjT+jIHBKErfqWHih1AQ
	QbJPkXE+k/exdJd1xt7fIhEtYugMhQYPJvTWbarg3941+rfl2L/KVzpu6JnkjxJyUp46/tw9rVT
	ZetQtN4daHsu6aHDcfHhBdiA==
X-Google-Smtp-Source: AGHT+IEW35UpKJ3TVFI5EnVSheZ5tHl+xOgElVMnA77E6wgo7u5O3iof6q5qmhz2WrQE+pWjN/KGO4h3blUSLI4s/Ks=
X-Received: by 2002:a2e:bd88:0:b0:30b:e96a:7d69 with SMTP id
 38308e7fff4ca-31049a9eff9mr30904871fa.35.1744605912293; Sun, 13 Apr 2025
 21:45:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
In-Reply-To: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sun, 13 Apr 2025 23:45:01 -0500
X-Gm-Features: ATxdqUF57-rCxIpVekQ3O83bzoHuLDnXdYKspeuPx52uO3yuAc_oPztfCji0DhU
Message-ID: <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: webgeek1234@gmail.com
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_214515_079898_4EBC5114 
X-CRM114-Status: GOOD (  18.91  )
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

T24gRnJpLCBBcHIgNCwgMjAyNSBhdCAzOjE44oCvQU0gQWFyb24gS2xpbmcgdmlhIEI0IFJlbGF5
CjxkZXZudWxsK3dlYmdlZWsxMjM0LmdtYWlsLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPgo+IEZy
b206IEFhcm9uIEtsaW5nIDx3ZWJnZWVrMTIzNEBnbWFpbC5jb20+Cj4KPiBDdXJyZW50bHksIGlm
IHVzYi1yb2xlLXN3aXRjaCBpcyBzZXQgYW5kIHJvbGUtc3dpdGNoLWRlZmF1bHQtbW9kZSBpcwo+
IG5vdCwgYSB4dXNiIHBvcnQgd2lsbCBiZSBpbm9wZXJhYmxlIHVudGlsIHRoYXQgcG9ydCBpcyBo
b3RwbHVnZ2VkLAo+IGJlY2F1c2UgdGhlIGRyaXZlciBkZWZhdWx0cyB0byByb2xlIG5vbmUuIElu
c3RlYWQgb2YgcmVxdWlyaW5nIGFsbAo+IGRldmljZXMgdG8gc2V0IHRoZSBkZWZhdWx0IG1vZGUs
IGFzc3VtZSB0aGF0IHRoZSBwb3J0IGlzIHByaW1hcmlseQo+IGludGVuZGVkIGZvciB1c2UgaW4g
ZGV2aWNlIG1vZGUuIFRoaXMgYXNzdW1wdGlvbiBhbHJlYWR5IGhhcyBwcmVjZWRlbmNlCj4gaW4g
dGhlIHN5bm9wc3lzIGR3YzMgZHJpdmVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogQWFyb24gS2xpbmcg
PHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvdGVncmEveHVzYi5j
IHwgOCArKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZl
cnMvcGh5L3RlZ3JhL3h1c2IuYwo+IGluZGV4IDc5ZDQ4MTRkNzU4ZDVlMWYwZTgyMDBkNjFlMTMx
NjA2YWRiYjBlMmQuLmM1NmU4MzIxNmQwZjU2NmEwOWI2NzM3NzE3MmZiMDRjODQwNmY0Y2YgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkv
dGVncmEveHVzYi5jCj4gQEAgLTczMSwxMyArNzMxLDExIEBAIHN0YXRpYyB2b2lkIHRlZ3JhX3h1
c2JfcGFyc2VfdXNiX3JvbGVfZGVmYXVsdF9tb2RlKHN0cnVjdCB0ZWdyYV94dXNiX3BvcnQgKnBv
cnQpCj4KPiAgICAgICAgIGlmIChtb2RlID09IFVTQl9EUl9NT0RFX0hPU1QpCj4gICAgICAgICAg
ICAgICAgIHJvbGUgPSBVU0JfUk9MRV9IT1NUOwo+IC0gICAgICAgZWxzZSBpZiAobW9kZSA9PSBV
U0JfRFJfTU9ERV9QRVJJUEhFUkFMKQo+ICsgICAgICAgZWxzZQo+ICAgICAgICAgICAgICAgICBy
b2xlID0gVVNCX1JPTEVfREVWSUNFOwo+Cj4gLSAgICAgICBpZiAocm9sZSAhPSBVU0JfUk9MRV9O
T05FKSB7Cj4gLSAgICAgICAgICAgICAgIHVzYl9yb2xlX3N3aXRjaF9zZXRfcm9sZShwb3J0LT51
c2Jfcm9sZV9zdywgcm9sZSk7Cj4gLSAgICAgICAgICAgICAgIGRldl9kYmcoJnBvcnQtPmRldiwg
InVzYiByb2xlIGRlZmF1bHQgbW9kZSBpcyAlcyIsIG1vZGVzW21vZGVdKTsKPiAtICAgICAgIH0K
PiArICAgICAgIHVzYl9yb2xlX3N3aXRjaF9zZXRfcm9sZShwb3J0LT51c2Jfcm9sZV9zdywgcm9s
ZSk7Cj4gKyAgICAgICBkZXZfZGJnKCZwb3J0LT5kZXYsICJ1c2Igcm9sZSBkZWZhdWx0IG1vZGUg
aXMgJXMiLCBtb2Rlc1ttb2RlXSk7Cj4gIH0KPgo+ICBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfdXNi
Ml9wb3J0X3BhcnNlX2R0KHN0cnVjdCB0ZWdyYV94dXNiX3VzYjJfcG9ydCAqdXNiMikKPgo+IC0t
LQo+IGJhc2UtY29tbWl0OiA5MWU1YmZlMzE3ZDhmODQ3MWZiYWEzZTcwY2Y2NmNhZTEzMTRhNTE2
Cj4gY2hhbmdlLWlkOiAyMDI1MDQwNC14dXNiLXBlcmlwaGVyYWwtYzQ1YjE2MzdmMzNiCj4KPiBC
ZXN0IHJlZ2FyZHMsCj4gLS0KPiBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPgo+
Cj4KCkZyaWVuZGx5IHJlbWluZGVyIGFib3V0IHRoaXMgcGF0Y2guCgpTaW5jZXJlbHksCkFhcm9u
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
