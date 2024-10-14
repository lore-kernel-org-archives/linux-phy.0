Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C151ECFC528
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 09:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hnr2q76zJ7y3NMpr1Fkd3wOKcmutGKDWN3GQh97u7B4=; b=3s3SGN1hNTrcNF
	/LMWlc7ir/ljb3C3MdB1ycOD0T1DZ/KB0zX5U+MyreoGrRB/mj9NjRIr6xQ+EVpw1bej2ZKkiK9YX
	tekDOJ9mdepvxLJgd4eooQ03tLdYMI+KTTeppwf3W0tZ4KVODi1IQf+pNDIZghE4quDbagDpA85p4
	oE0C7Wo7uI38YSgcYvN/0tyXHOUYsKwK0GKDYRfH1AyljkUrPcyGBI/w3Mm1OMAXZc7T7YC0ED9wm
	gNTQLpitmoYe6TrvKm0tJeXjezj++dudSXIod4LuMf8p7Sk+7KhqiPg2ezYymh1RiU1DhgdomLOBz
	6AiInO6OM4udTYqBZqXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HE9-00000004Ts7-17l4;
	Mon, 14 Oct 2024 09:18:57 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Gyi-00000004PiX-3TPh
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 09:03:02 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-71e453c7408so1546607b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Oct 2024 02:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728896579; x=1729501379; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r6BlRxGFAWXdmmWyG/Jl2AYSWcJ7q9f3AYTt/GTL8Vs=;
        b=wSNylXyo7HhafPx3UaAzOqwKYnfOLvTNjz/pJtv8tiUkPkcrGYGpmk1a3fKzD1hP3S
         wcaI+gHhyqFHFnXvJ8VUpp99uKBRdcVI4u0gZbQZqRq2Y+Nw7lonqY///n2vDhNXV2el
         CpBOj0CEWHB/5B2vqMZQo81YAZa93QCpb5WfUEpmKs2FBKkBsFQOMLaKtC+jFSJTnwr1
         42wDKElIDyneFRtdx/2Fh3e8SChdmHx43uhKY7X9x9GTd+8Ajr/7BQlX2ut8fefZrs3K
         E7ELOofbmeJTOmvDIfSt7W5z4j8cd/RmbiQXdUrtfhQIkOWiYWMtzNvE8unc0nJmImje
         YMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728896579; x=1729501379;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r6BlRxGFAWXdmmWyG/Jl2AYSWcJ7q9f3AYTt/GTL8Vs=;
        b=MCcnA4WcvY967CJYuJmlxwSvNtZUsnUBn+kM5o/qv2wNcQwKBaLC0HMbngdlE7VRss
         ntd+mFMG6ggw0xQRZrirMUzz1gpwJn7zHusHOZ/s8iTaaHsJtDaVwn/Z2lo1TijHhEZA
         In2wTKJSB2/m0YiaK9RDSoN3fzLrMPPPLSvIEz2AaDiuIVdbih40yzE5akQHXzbbs9mQ
         pkLNRLGGqAPHq62GcKWRdCyR9aVZnKtjGYJkdF7WJ6AbTdiKSTxAszGZLXruzQbUky1a
         QZwSJ27b12BE5RTahbkONrYcaXos08sjpmCrqE3iExk2Fza0kBe3KSrvFq33pRNDCbtI
         pT/w==
X-Forwarded-Encrypted: i=1; AJvYcCUmSIEJ1yHs6++uenhsOahDtcygAADfPqa2+jo4DHbRJUvQEFoTKscFkTehOpxaafVOJUwn4mVvRCA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfQZ8PTGvbhgZKTHh4+rFzAecqNkuGBeLDKjjfwXivOD0coYWT
	cxo3DbXjUHKcYKszpY3Z7vZVsa4G8rKSVzPPr6O6IfAOmgkU/zbKGlciUYH9vQ==
X-Google-Smtp-Source: AGHT+IEd4NMKPXw0+kEcZfxjlbat70LgfJ4YvfVvn2VjB+W9S14ALVCgSnHKZNhydjKJLkZrc0GTQg==
X-Received: by 2002:a05:6a00:1391:b0:71e:ba5:820e with SMTP id d2e1a72fcca58-71e4c1dcd95mr11403576b3a.27.1728896579444;
        Mon, 14 Oct 2024 02:02:59 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e6283e9f4sm2013750b3a.187.2024.10.14.02.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 02:02:59 -0700 (PDT)
Date: Mon, 14 Oct 2024 14:32:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 3/8] dt-bindings: PCI: qcom,pcie-x1e80100: Add
 'global' interrupt
Message-ID: <20241014090251.r4sfaaxtasokv4oi@thinkpad>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-4-quic_qianyu@quicinc.com>
 <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3>
 <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org>
 <3d1d0822-da66-44c8-a328-69804210123c@kernel.org>
 <65B34B14-76C3-491D-8A58-6D0887889018@linaro.org>
 <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_020300_892006_6C9FD502 
X-CRM114-Status: GOOD (  19.28  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDY6MDY6MDJQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAxMS8xMC8yMDI0IDE3OjUxLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiAKPiA+IAo+ID4gT24gT2N0b2JlciAxMSwgMjAyNCA5OjE0OjMxIFBNIEdNVCsw
NTozMCwgS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPiA+PiBP
biAxMS8xMC8yMDI0IDE3OjQyLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPj4+Cj4g
Pj4+Cj4gPj4+IE9uIE9jdG9iZXIgMTEsIDIwMjQgODowMzo1OCBQTSBHTVQrMDU6MzAsIEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPj4+PiBPbiBGcmksIE9j
dCAxMSwgMjAyNCBhdCAwMzo0MTozN0FNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+Pj4+PiBE
b2N1bWVudCAnZ2xvYmFsJyBTUEkgaW50ZXJydXB0IGFsb25nIHdpdGggdGhlIGV4aXN0aW5nIE1T
SSBpbnRlcnJ1cHRzIHNvCj4gPj4+Pj4gdGhhdCBRQ09NIFBDSWUgUkMgZHJpdmVyIGNhbiBtYWtl
IHVzZSBvZiBpdCB0byBnZXQgZXZlbnRzIHN1Y2ggYXMgUENJZQo+ID4+Pj4+IGxpbmsgc3BlY2lm
aWMgZXZlbnRzLCBzYWZldHkgZXZlbnRzLCBldGMuCj4gPj4+Pgo+ID4+Pj4gRGVzY3JpYmUgdGhl
IGhhcmR3YXJlLCBub3Qgd2hhdCB0aGUgZHJpdmVyIHdpbGwgZG8uCj4gPj4+Pgo+ID4+Pj4+Cj4g
Pj4+Pj4gVGhvdWdoIGFkZGluZyBhIG5ldyBpbnRlcnJ1cHQgd2lsbCBicmVhayB0aGUgQUJJLCBp
dCBpcyByZXF1aXJlZCB0bwo+ID4+Pj4+IGFjY3VyYXRlbHkgZGVzY3JpYmUgdGhlIGhhcmR3YXJl
Lgo+ID4+Pj4KPiA+Pj4+IFRoYXQncyBwb29yIHJlYXNvbi4gSGFyZHdhcmUgd2FzIGRlc2NyaWJl
ZCBhbmQgbWlzc2luZyBvcHRpb25hbCBwaWVjZQo+ID4+Pj4gKGJlY2F1c2UgYWNjb3JkaW5nIHRv
IHlvdXIgZGVzY3JpcHRpb24gYWJvdmUgZXZlcnl0aGluZyB3YXMgd29ya2luZwo+ID4+Pj4gZmlu
ZSkgaXMgbm90IG5lZWRlZCB0byBicmVhayBBQkkuCj4gPj4+Pgo+ID4+Pgo+ID4+PiBIYXJkd2Fy
ZSB3YXMgZGVzY3JpYmVkIGJ1dCBub3QgY29tcGxldGVseS4gJ2dsb2JhbCcgSVJRIGxldCdzIHRo
ZSBjb250cm9sbGVyIGRyaXZlciB0byBoYW5kbGUgUENJZSBsaW5rIHNwZWNpZmljIGV2ZW50cyBs
aWtlIExpbmsgdXAsIExpbmsgZG93biBldGMuLi4gVGhleSBpbXByb3ZlIHVzZXIgZXhwZXJpZW5j
ZSBsaWtlIHRoZSBkcml2ZXIgY2FuIHVzZSB0aG9zZSBpbnRlcnJ1cHRzIHRvIHN0YXJ0IGJ1cyBl
bnVtZXJhdGlvbiBvbiBpdHMgb3duLiBTbyBicmVha2luZyB0aGUgQUJJIGZvciBnb29kIGluIHRo
aXMgY2FzZS4KPiA+Pj4KPiA+Pj4+IFNvcnJ5LCBpZiB5b3VyIGRyaXZlciBjaGFuZ2VzIHRoZSBB
QkkgZm9yIHRoaXMgcG9vciByZWFzb24uCj4gPj4+Pgo+ID4+Pgo+ID4+PiBJcyB0aGUgYWJvdmUg
cmVhc29uaW5nIHN1ZmZpY2llbnQ/IAo+ID4+Cj4gPj4gSSB0cmllZCB0byBsb29rIGZvciBjb3Jy
ZXNwb25kaW5nIGRyaXZlciBjaGFuZ2UsIGJ1dCBjb3VsZCBub3QsIHNvIG1heWJlCj4gPj4gdGhl
cmUgaXMgbm8gQUJJIGJyZWFrIGluIHRoZSBmaXJzdCBwbGFjZS4KPiA+IAo+ID4gSGVyZSBpdCBp
czoKPiA+IAo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NDU4MTQwM2Y2NzkyOWQwMmMxOTdjYjE4
N2M0ZTFlODExYzllNzYyYQo+ID4gCj4gPiAgQWJvdmUgZXhwbGFuYXRpb24gaXMgZ29vZCwgYnV0
Cj4gPj4gc3RpbGwgZmVlbHMgbGlrZSBpbXByb3ZlbWVudCBhbmQgZGV2aWNlIGNvdWxkIHdvcmsg
d2l0aG91dCBnbG9iYWwgY2xvY2suCj4gCj4gU28gdGhlcmUgaXMgbm8gQUJJIGJyZWFrIGluIHRo
ZSBmaXJzdCBwbGFjZS4uLiBDb21taXQgaXMgbWlzbGVhZGluZy4KPiAKCkl0IGluY3JlYXNlcyB0
aGUgJ21pbkl0ZW1zJyB0byA5IGZyb20gOCwgaG93IGNvbWUgaXQgaXMgbm90IGFuIEFCSSBicmVh
az8KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
