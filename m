Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B711C5DF74
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8l9uOm/89rHRd3g7ZXQm16khk5mXX7spE5BTNV0XTQ=; b=s2bFyLCHAx8I9Y
	3VFiN+FCAJsY1nzaL2++uMVwenFV/6odBFVn8UpJKRSqW2cvbWEEUVrrcQEr+DA5r3/r9EhtlN5Wf
	dfgfDyohLvJ9krctn7qyT1g6M2YUGDagQUEd882h5HfOK7HAYwQpAo1YJQBcGfheMYN+P59mR4hWu
	preb2vSjIM+5J8jbIAOW7h3ThJqoMooT0fcKBsWP56X1XFRcQST/HEEayXAt3SyzQuxmm6n97TmNT
	Ntm/MHWrJOIsVRDDyfSb8ZNe7Z7860P7X4REHnKi/RaO32jWkMugYalLfNhvQsJ4zhDDv5RLcYBBf
	B5iqlJc2S7E1RoWcvW5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Lj-00000006tCR-36tJ;
	Mon, 17 Aug 2026 21:58:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Li-00000006tCD-1Jhw
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:58:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 92942600C8;
	Mon, 17 Aug 2026 21:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 978C41F000E9;
	Mon, 17 Aug 2026 21:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787003909;
	bh=38Jkm+lbu72apfTZ4s/tQeHyRRr/ttGUwGlE0DYprTw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KlCASnJrcuXRGEGdwXVd4LvLPs9iJB8xMu4NZeDh07PuaEmpMt9M5TBnQo205BPWw
	 70PpFoowjRZvJwL2mwqWyxVQQRN4zgPNNCpt5b+B2QomYludriRP9lfVnyvUCAY08H
	 AhG/0KcY7i+5Sg+iR4CVk9PXsrTe6VSJb9KYugRdGqEuYaY8DlhofxqUiRwgVNPWU3
	 a6Bt/OwNm3NF19r9kmXUwk6a+nvXv8vUFcppWZUB/T2IHte1nBCUg7iRJn4mwMaTN9
	 QDMbwUQzf0qnhn9CfvpjS9z7iJ2e6zN6S0VQbmi8FOrMt1H3y6vCE+ArY0Y3D03wka
	 ycIsbFgz5P8Dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/7] dt-bindings: usb: ti,musb-am33xx: Convert to DT
 schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: neil.armstrong@linaro.org, dmaengine@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260818-ti-am33-usb-v1-4-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-4-69ac5f92df45@gmail.com>
Date: Mon, 17 Aug 2026 21:58:28 +0000
Message-Id: <20260817215828.978C41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGN1c3RvbSB2ZW5k
b3Itc3BlY2lmaWMgcHJvcGVydHkgYG1lbnRvcixyYW0tYml0c2AgaXMgbWlzc2luZyBhIHR5cGUg
ZGVmaW5pdGlvbiByZWZlcmVuY2UgKGAkcmVmYCksIHdoaWNoIHdpbGwgY2F1c2UgZGV2aWNlIHRy
ZWUgc2NoZW1hIHZhbGlkYXRpb24gdG8gZmFpbC4KLS0KCi0tLSBQYXRjaCBbNF06IFtQQVRDSCA0
LzddIGR0LWJpbmRpbmdzOiB1c2I6IHRpLG11c2ItYW0zM3h4OiBDb252ZXJ0IHRvIERUIHNjaGVt
YSAtLS0KY29tbWl0IDhkNzVkNzk3NDUyYjFmNzg1YWY0NjM2YjBjZDU1MjEyYTk1YjUwNWEKQXV0
aG9yOiBCaGFyZ2F2IEpvc2hpIDxqLmJoYXJnYXYudUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczog
dXNiOiB0aSxtdXNiLWFtMzN4eDogQ29udmVydCB0byBEVCBzY2hlbWEKClRoaXMgY29tbWl0IGNv
bnZlcnRzIHRoZSBUSSBBTTMzeHggTVVTQiB0ZXh0IGJpbmRpbmdzIHRvIERUIHNjaGVtYSBmb3Jt
YXQuCkl0IGluY2x1ZGVzIG1vZGlmaWNhdGlvbnMgdG8gc3VwcG9ydCBvcHRpb25hbCB2YnVzIGlu
dGVycnVwdHMgYW5kIG5hdGl2ZWx5CnN1cHBvcnRlZCBtdWx0aXBvaW50IHNldHVwcywgYXMgd2Vs
bCBhcyBhZGRpbmcgaGFyZHdhcmUtc3BlY2lmaWMgcHJvcGVydGllcy4KCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksbXVzYi1hbTMzeHgueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdGksbXVzYi1hbTMzeHgu
eWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMDU5MDlk
NWNhM2QyZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL3RpLG11c2ItYW0zM3h4LnlhbWwKClsgLi4uIF0KCj4gKyAgbWVudG9yLG51
bS1lcHM6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50
MzIKPiArICAgIGRlc2NyaXB0aW9uOiBTcGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbmRwb2ludHMu
Cj4gKyAgICBjb25zdDogMTYKPiArCj4gKyAgbWVudG9yLHJhbS1iaXRzOgo+ICsgICAgZGVzY3Jp
cHRpb246IFNwZWNpZmllcyB0aGUgcmFtIGFkZHJlc3Mgc2l6ZS4KPiArICAgIGNvbnN0OiAxMgoK
W1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBwcm9wZXJ0eSBuZWVkIGEgdHlwZSBkZWZpbml0aW9u
IHJlZmVyZW5jZT8gCgpVbmxpa2UgaXRzIHNpYmxpbmcgcHJvcGVydGllcyAoc3VjaCBhcyBtZW50
b3IsbnVtLWVwcyBhbmQgbWVudG9yLHBvd2VyKSwgCm1lbnRvcixyYW0tYml0cyBpcyBtaXNzaW5n
IGEgJHJlZiB0byBhIHN0YW5kYXJkIERUIHR5cGUuIEJlY2F1c2UgaXQgaXMgYSAKY3VzdG9tIHZl
bmRvci1zcGVjaWZpYyBwcm9wZXJ0eSwgbGFja2luZyBhIHR5cGUgcmVmZXJlbmNlIGxpa2UgCiRy
ZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMiB0eXBpY2FsbHkgY2F1
c2VzIApkdF9iaW5kaW5nX2NoZWNrIHRvIGZhaWwgd2l0aCBhIG1pc3NpbmcgdHlwZSBkZWZpbml0
aW9uIGVycm9yLgoKPiArCj4gKyAgbWVudG9yLHBvd2VyOgo+ICsgICAgJHJlZjogL3NjaGVtYXMv
dHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4gKyAgICBkZXNjcmlwdGlvbjogQ29udHJv
bGxlciBzdXBwbHkgY2FwYWNpdHkgKGluIG1BKSB3aGVuIG9wZXJhdGluZyBpbiBob3N0IG1vZGUu
Cj4gKyAgICBjb25zdDogNTAwCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODE4LXRpLWFtMzMtdXNiLXYxLTAtNjlh
YzVmOTJkZjQ1QGdtYWlsLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
