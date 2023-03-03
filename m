Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3691C7EE2D
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 17:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/l0q3Wk7TEuyGucmkDUmjLn2fHAUGsm0qrgjJHhnhc=; b=4+iGhb81wsdgDA
	JpfFu7krbXKYFZM+6ZeT240ybj9y9IESvQyDkjG3UbTPBzZmBQUGiigSHU6AV5IlmJNCFKxWA+BcB
	9qbfLvq0iorR+JgJaz8FhEdApE3nK08HF5CrK6MYMXS1HlVmosiGeJ3xxn7HxmHWqrGLjE8bLsKBe
	3P5dKBhgsWIdhe3AmDjuHjxCOoUuyjF3OLvidTEd5m379VCXHT5S3b4ecTWEgHK6XRR6k+PRs2HzY
	Mn6SraKZybQ9Dgh5guS4nWWCT9KojNa0e+6mNAmh5JsFH1c/iO/6T2qR5SCPr3kTzlibzEYXlU/cK
	SMBsiklGMP+V3jPkeW/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9R5-00736Y-Pj; Fri, 03 Mar 2023 17:43:15 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9Fz-006yG5-L7
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 17:31:51 +0000
Received: by mail-lj1-x230.google.com with SMTP id x6so3130692ljq.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Mar 2023 09:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lulx79GyAFA+P6dFOCo5Azji9mlKR6wcVUynCnl38KE=;
        b=JITNzhiSKTtjoAwF8+7ZzK3BFkI2QL7n7qvc8NL4tf2TdDiB42bCjsYe/izBt4P+9P
         lczExnj88Gk6EJnFrpd+rDJqpJLXZrFWJejHE/41SNNpPSOPSMY/t+ka4b5SsJVrPLHS
         yP8QlZ4A7u0QnpLqepfRRA6oRNAfFlMSLg9RFndTA4G2xf3m6mlZCv7MgAmlGP0c8oWl
         i8wFp/FD38t10Lcua1M5QYwo/GKeCH7BrCeFC0Qg6KOLMCMSWiBQE04bFJRqxsde4oFG
         7xr+53mwxla2EbiKtNRjabsAbACLLZZ8qk5BGu7Xf1wCkEqYOCB87CCuHWnFs7PFvCvc
         ilNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lulx79GyAFA+P6dFOCo5Azji9mlKR6wcVUynCnl38KE=;
        b=Jz3QE5oX0B09/fk9gezHlfFxGKBHgiI1ZC9GrCxms5Erfyl1k5gXngxryRqOFAQwbD
         8+t3pQWM47dX0lHX+i5HM7k60oolNg1nU5gUbnEFLoOGWF1ZmaMIoG0Fg4jUt7JwEgp6
         OqWv3Pz5bCv1i3Bgedj9+/fft74qiQAyJGqhkmsUbNojdm+3/hmFyFQHw9i/kl1fKmJm
         JhECfZXXbPDzyBBeffFUKso0izvnCOgUH2ZmYqTEac/uE+cYHypju6HECkIjjQipOa20
         wrQppsbOeFZU/evTC7Z+ZQM7/XyRMgCLxgMBUJvKhdUXUQU11P1dShKwLFwOIqZYiAma
         aPZA==
X-Gm-Message-State: AO0yUKWa4310GEmpiBOIr/IXmspJ3S/W0kWESPptIZJjachbnfzSz6BI
	GStA52PwX58HmUlNlX43G9baGw==
X-Google-Smtp-Source: AK7set+TY6SCuyHzL+clUmus/vGmZ+jVnXAk/MpTCOHfN+mCHX0WkFtQ6gXt+GN97vVUzr2U7gu7/g==
X-Received: by 2002:a2e:b019:0:b0:295:a3a9:a3e4 with SMTP id y25-20020a2eb019000000b00295a3a9a3e4mr848742ljk.45.1677864703905;
        Fri, 03 Mar 2023 09:31:43 -0800 (PST)
Received: from [127.0.0.1] (85-76-129-102-nat.elisa-mobile.fi. [85.76.129.102])
        by smtp.gmail.com with ESMTPSA id f8-20020a2e6a08000000b0029571d2226bsm402252ljc.11.2023.03.03.09.31.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Mar 2023 09:31:43 -0800 (PST)
Date: Fri, 03 Mar 2023 17:16:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
 Devi Priya <quic_devipriy@quicinc.com>
CC: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, bhelgaas@google.com,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 svarbanov@mm-sol.com, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, quic_srichara@quicinc.com,
 quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com,
 quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
 quic_anusha@quicinc.com
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_1/7=5D_dt-bindings=3A_PCI=3A_q?= =?US-ASCII?Q?com=3A_Add_IPQ9574_specific_compatible?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20230228063358.GA4839@thinkpad>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com> <20230214164135.17039-2-quic_devipriy@quicinc.com> <20230224082332.GA5443@thinkpad> <bd153038-4427-1f11-1941-5f13fec01cf7@quicinc.com> <20230228063358.GA4839@thinkpad>
Message-ID: <9BD62D8E-4E14-4269-B72D-C83EF4D43040@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_093147_795883_04D48C17 
X-CRM114-Status: GOOD (  19.65  )
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

Mjgg0YTQtdCy0YDQsNC70Y8gMjAyMyDQsy4gMDg6MzM6NTggR01UKzAyOjAwLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4g0L/QuNGI0LXRgjoKPk9uIFR1ZSwgRmViIDI4
LCAyMDIzIGF0IDEwOjU2OjUzQU0gKzA1MzAsIERldmkgUHJpeWEgd3JvdGU6Cj4+IAo+PiAKPj4g
T24gMi8yNC8yMDIzIDE6NTMgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4gPiBP
biBUdWUsIEZlYiAxNCwgMjAyMyBhdCAxMDoxMToyOVBNICswNTMwLCBEZXZpIFByaXlhIHdyb3Rl
Ogo+PiA+ID4gRG9jdW1lbnQgdGhlIGNvbXBhdGlibGUgZm9yIElQUTk1NzQKPj4gPiA+IAo+PiBI
aSBNYW5pLCBUaGFua3MgZm9yIHRha2luZyB0aW1lIHRvIHJldmlldyB0aGUgcGF0Y2guCj4+ID4g
Cj4+ID4gWW91IGRpZG4ndCBtZW50aW9uIGFib3V0IHRoZSAibXNpLXBhcmVudCIgcHJvcGVydHkg
dGhhdCBpcyBiZWluZyBhZGRlZAo+PiA+IGJ5IHRoaXMgcGF0Y2gKPj4gU3VyZSwgd2lsbCB1cGRh
dGUgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBuZXh0IHNwaW4KPj4gPiAKPj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IERldmkgUHJpeWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5jb20+Cj4+ID4gPiAt
LS0KPj4gPiA+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAg
IHwgNzIgKysrKysrKysrKysrKysrKysrLQo+PiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgNzAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4gPiA+IAo+PiA+ID4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4+ID4gPiBp
bmRleCA4NzI4MTdkNmQyYmQuLmRhYmRmMjY4NGUyZCAxMDA2NDQKPj4gPiA+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPj4gPiA+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwK
Pj4gPiA+IEBAIC0yNiw2ICsyNiw3IEBAIHByb3BlcnRpZXM6Cj4+ID4gPiAgICAgICAgICAgICAt
IHFjb20scGNpZS1pcHE4MDY0LXYyCj4+ID4gPiAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4
MDc0Cj4+ID4gPiAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDc0LWdlbjMKPj4gPiA+ICsg
ICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+PiA+ID4gICAgICAgICAgICAgLSBxY29tLHBj
aWUtbXNtODk5Ngo+PiA+ID4gICAgICAgICAgICAgLSBxY29tLHBjaWUtcWNzNDA0Cj4+ID4gPiAg
ICAgICAgICAgICAtIHFjb20scGNpZS1zYTg1NDBwCj4+ID4gPiBAQCAtNDQsMTEgKzQ1LDExIEBA
IHByb3BlcnRpZXM6Cj4+ID4gPiAgICAgcmVnOgo+PiA+ID4gICAgICAgbWluSXRlbXM6IDQKPj4g
PiA+IC0gICAgbWF4SXRlbXM6IDUKPj4gPiA+ICsgICAgbWF4SXRlbXM6IDYKPj4gPiA+ICAgICBy
ZWctbmFtZXM6Cj4+ID4gPiAgICAgICBtaW5JdGVtczogNAo+PiA+ID4gLSAgICBtYXhJdGVtczog
NQo+PiA+ID4gKyAgICBtYXhJdGVtczogNgo+PiA+ID4gICAgIGludGVycnVwdHM6Cj4+ID4gPiAg
ICAgICBtaW5JdGVtczogMQo+PiA+ID4gQEAgLTEwNSw2ICsxMDYsOCBAQCBwcm9wZXJ0aWVzOgo+
PiA+ID4gICAgICAgaXRlbXM6Cj4+ID4gPiAgICAgICAgIC0gY29uc3Q6IHBjaWVwaHkKPj4gPiA+
ICsgIG1zaS1wYXJlbnQ6IHRydWUKPj4gPiA+ICsKPj4gPiA+ICAgICBwb3dlci1kb21haW5zOgo+
PiA+ID4gICAgICAgbWF4SXRlbXM6IDEKPj4gPiA+IEBAIC0xNzMsNiArMTc2LDI3IEBAIGFsbE9m
Ogo+PiA+ID4gICAgICAgICAgICAgICAtIGNvbnN0OiBwYXJmICMgUXVhbGNvbW0gc3BlY2lmaWMg
cmVnaXN0ZXJzCj4+ID4gPiAgICAgICAgICAgICAgIC0gY29uc3Q6IGNvbmZpZyAjIFBDSWUgY29u
ZmlndXJhdGlvbiBzcGFjZQo+PiA+ID4gKyAgLSBpZjoKPj4gPiA+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+PiA+ID4gKyAgICAgICAgY29tcGF0aWJsZToKPj4gPiA+ICsgICAgICAgICAgY29udGFpbnM6
Cj4+ID4gPiArICAgICAgICAgICAgZW51bToKPj4gPiA+ICsgICAgICAgICAgICAgIC0gcWNvbSxw
Y2llLWlwcTk1NzQKPj4gPiA+ICsgICAgdGhlbjoKPj4gPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+
PiA+ID4gKyAgICAgICAgcmVnOgo+PiA+ID4gKyAgICAgICAgICBtaW5JdGVtczogNQo+PiA+ID4g
KyAgICAgICAgICBtYXhJdGVtczogNgo+PiA+ID4gKyAgICAgICAgcmVnLW5hbWVzOgo+PiA+ID4g
KyAgICAgICAgICBtaW5JdGVtczogNQo+PiA+ID4gKyAgICAgICAgICBpdGVtczoKPj4gPiA+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBkYmkgIyBEZXNpZ25XYXJlIFBDSWUgcmVnaXN0ZXJzCj4+ID4g
PiArICAgICAgICAgICAgLSBjb25zdDogZWxiaSAjIEV4dGVybmFsIGxvY2FsIGJ1cyBpbnRlcmZh
Y2UgcmVnaXN0ZXJzCj4+ID4gPiArICAgICAgICAgICAgLSBjb25zdDogYXR1ICMgQVRVIGFkZHJl
c3Mgc3BhY2UKPj4gPiA+ICsgICAgICAgICAgICAtIGNvbnN0OiBwYXJmICMgUXVhbGNvbW0gc3Bl
Y2lmaWMgcmVnaXN0ZXJzCj4+ID4gPiArICAgICAgICAgICAgLSBjb25zdDogY29uZmlnICMgUENJ
ZSBjb25maWd1cmF0aW9uIHNwYWNlCj4+ID4gPiArICAgICAgICAgICAgLSBjb25zdDogYWdncl9u
b2MgI1BDSWUgYWdncl9ub2MKPj4gPiAKPj4gPiBXaHkgZG8geW91IG5lZWQgdGhpcyByZWdpb24g
dW5saWtlIG90aGVyIFNvQ3M/IElzIHRoZSBkcml2ZXIgbWFraW5nIHVzZSBvZiBpdD8KPj4gV2Ug
aGF2ZSB0aGUgYWdncl9ub2MgcmVnaW9uIGluIGlwcTk1NzQgdG8gYWNoaWV2ZSBoaWdoZXIgdGhy
b3VnaHB1dCAmIHRvCj4+IGhhbmRsZSBtdWx0aXBsZSBQQ0llIGluc3RhbmNlcy4gVGhlIGRyaXZl
ciB1c2VzIGl0IHRvIHJhdGUgYWRhcHQgMS1sYW5lIFBDSWUKPj4gY2xvY2tzLiBNeSBiYWQsIG1p
c3NlZCBpdC4gV2lsbCBhZGQgdGhlIGRyaXZlciBjaGFuZ2VzIGluIFYyLgo+Cj5IbW0sIHRoaXMg
aXMgc29tZXRoaW5nIG5ldy4gSG93IGNhbiB5b3UgYWNoaWV2ZSBoaWdoZXIgdGhyb3VnaHB1dCB3
aXRoIHRoaXMKPnJlZ2lvbj8gQ2FuIHlvdSBleHBsYWluIG1vcmUgb24gaG93IGl0IGlzIHVzZWQ/
CgpCYXNlZCBvbiB0aGUgbmFtZSBvZiB0aGUgcmVnaW9uLCBpdCBsb29rcyBsaWtlIGl0IGlzIGFu
IGludGVyY29ubmVjdCByZWdpb24uIAoKRGV2aSwgaWYgdGhpcyBpcyB0aGUgY2FzZSwgdGhlbiB5
b3UgaGF2ZSB0byBoYW5kbGUgaXQgdGhyb3VnaCB0aGUgaW50ZXJjb25uZWN0IGRyaXZlciwgcmF0
aGVyIHRoYW4gcG9raW5nIGRpcmVjdGx5IGludG8gdGhlc2UgcmVnaXN0ZXJzLgoKCj4KPlRoYW5r
cywKPk1hbmkKPgo+PiA+IAo+PiA+IFRoYW5rcywKPj4gPiBNYW5pCj4+ID4gCj4+ID4gPiArCj4+
ID4gPiAgICAgLSBpZjoKPj4gPiA+ICAgICAgICAgcHJvcGVydGllczoKPj4gPiA+ICAgICAgICAg
ICBjb21wYXRpYmxlOgo+PiA+ID4gQEAgLTM2NSw2ICszODksMzkgQEAgYWxsT2Y6Cj4+ID4gPiAg
ICAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+PiA+ID4gICAgICAgICAgICAg
ICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFzdGVyIFN0aWNreSByZXNldAo+PiA+ID4g
KyAgLSBpZjoKPj4gPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+PiA+ID4gKyAgICAgICAgY29tcGF0
aWJsZToKPj4gPiA+ICsgICAgICAgICAgY29udGFpbnM6Cj4+ID4gPiArICAgICAgICAgICAgZW51
bToKPj4gPiA+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPj4gPiA+ICsgICAg
dGhlbjoKPj4gPiA+ICsgICAgICBwcm9wZXJ0aWVzOgo+PiA+ID4gKyAgICAgICAgY2xvY2tzOgo+
PiA+ID4gKyAgICAgICAgICBtaW5JdGVtczogNgo+PiA+ID4gKyAgICAgICAgICBtYXhJdGVtczog
Ngo+PiA+ID4gKyAgICAgICAgY2xvY2stbmFtZXM6Cj4+ID4gPiArICAgICAgICAgIGl0ZW1zOgo+
PiA+ID4gKyAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAgIyBBSEIgY2xvY2sKPj4gPiA+ICsgICAg
ICAgICAgICAtIGNvbnN0OiBhdXggICMgQXV4aWxpYXJ5IGNsb2NrCj4+ID4gPiArICAgICAgICAg
ICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFzdGVyIGNsb2NrCj4+ID4gPiArICAgICAgICAgICAg
LSBjb25zdDogYXhpX3MgIyBBWEkgU2xhdmUgY2xvY2sKPj4gPiA+ICsgICAgICAgICAgICAtIGNv
bnN0OiBheGlfYnJpZGdlICMgQVhJIGJyaWRnZSBjbG9jawo+PiA+ID4gKyAgICAgICAgICAgIC0g
Y29uc3Q6IHJjaG5nCj4+ID4gPiArICAgICAgICByZXNldHM6Cj4+ID4gPiArICAgICAgICAgIG1p
bkl0ZW1zOiA4Cj4+ID4gPiArICAgICAgICAgIG1heEl0ZW1zOiA4Cj4+ID4gPiArICAgICAgICBy
ZXNldC1uYW1lczoKPj4gPiA+ICsgICAgICAgICAgaXRlbXM6Cj4+ID4gPiArICAgICAgICAgICAg
LSBjb25zdDogcGlwZSAjIFBJUEUgcmVzZXQKPj4gPiA+ICsgICAgICAgICAgICAtIGNvbnN0OiBz
dGlja3kgIyBDb3JlIFN0aWNreSByZXNldAo+PiA+ID4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4
aV9zX3N0aWNreSAjIEFYSSBTbGF2ZSBTdGlja3kgcmVzZXQKPj4gPiA+ICsgICAgICAgICAgICAt
IGNvbnN0OiBheGlfcyAjIEFYSSBTbGF2ZSByZXNldAo+PiA+ID4gKyAgICAgICAgICAgIC0gY29u
c3Q6IGF4aV9tX3N0aWNreSAjIEFYSSBNYXN0ZXIgU3RpY2t5IHJlc2V0Cj4+ID4gPiArICAgICAg
ICAgICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFzdGVyIHJlc2V0Cj4+ID4gPiArICAgICAgICAg
ICAgLSBjb25zdDogYXV4ICMgQVVYIFJlc2V0Cj4+ID4gPiArICAgICAgICAgICAgLSBjb25zdDog
YWhiICMgQUhCIFJlc2V0Cj4+ID4gPiArCj4+ID4gPiAgICAgLSBpZjoKPj4gPiA+ICAgICAgICAg
cHJvcGVydGllczoKPj4gPiA+ICAgICAgICAgICBjb21wYXRpYmxlOgo+PiA+ID4gQEAgLTY4MSw2
ICs3MzgsMTYgQEAgYWxsT2Y6Cj4+ID4gPiAgICAgICAgICAgLSBpbnRlcmNvbm5lY3RzCj4+ID4g
PiAgICAgICAgICAgLSBpbnRlcmNvbm5lY3QtbmFtZXMKPj4gPiA+ICsgIC0gaWY6Cj4+ID4gPiAr
ICAgICAgcHJvcGVydGllczoKPj4gPiA+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4+ID4gPiArICAg
ICAgICAgIGNvbnRhaW5zOgo+PiA+ID4gKyAgICAgICAgICAgIGVudW06Cj4+ID4gPiArICAgICAg
ICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+ID4gPiArICAgIHRoZW46Cj4+ID4gPiArICAg
ICAgcmVxdWlyZWQ6Cj4+ID4gPiArICAgICAgICAtIG1zaS1wYXJlbnQKPj4gPiA+ICsKPj4gPiA+
ICAgICAtIGlmOgo+PiA+ID4gICAgICAgICBub3Q6Cj4+ID4gPiAgICAgICAgICAgcHJvcGVydGll
czoKPj4gPiA+IEBAIC02OTMsNiArNzYwLDcgQEAgYWxsT2Y6Cj4+ID4gPiAgICAgICAgICAgICAg
ICAgICAtIHFjb20scGNpZS1pcHE4MDY0djIKPj4gPiA+ICAgICAgICAgICAgICAgICAgIC0gcWNv
bSxwY2llLWlwcTgwNzQKPj4gPiA+ICAgICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgw
NzQtZ2VuMwo+PiA+ID4gKyAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4+ID4g
PiAgICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1xY3M0MDQKPj4gPiA+ICAgICAgIHRoZW46
Cj4+ID4gPiAgICAgICAgIHJlcXVpcmVkOgo+PiA+ID4gLS0gCj4+ID4gPiAyLjE3LjEKPj4gPiA+
IAo+PiA+IAo+PiBUaGFua3MsCj4+IERldmkgUHJpeWEKPgoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
