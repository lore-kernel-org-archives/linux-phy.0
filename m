Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A2F8C6FD1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 15:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0TmHzx7QmKYtvtxvjCJImv+pqWbC+XZ4nzbRLY9Ois=; b=DH6GNAA7rlbedZ
	seVjUH2Ou9eZkDdfNdBzJEFSE1INir3msmKxdLB67O0Np7x5S7t/4EFkMPo+AitBnREEmBj0MoFlr
	iEApaJALZ3Sj6kptI+naVivINiAbr8Z9uXoCZV+5MsOkvxlDrdjfruEa47NofZyZXjU6QyLySoBhC
	ydt63PnfX2fUfyd9PlFMK1iMaWI1iJLevJjkHnnrZCN4xGoX9QiH7SKPydLTvtaJHE4qPZa3A7+/D
	WBWPTHj/bI67vL/wPtChMTm1LRJ02N9NCI8Oi7KCWTl3rzeQ8b89CoGREy3KQ+57kqMidKIk7YE6G
	O6LuWroqCXNazyOrEIpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZZ5Y-001BHO-3r; Tue, 07 Mar 2023 15:18:52 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZYkV-0010dS-9V
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 14:57:10 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-536b7ffdd34so249172647b3.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 06:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678201024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3Cr5iHChPhVIM0IBEr0zNr4m47UpuB7ZQNBapGvsMA=;
        b=Sa7p7I6Iw0SkeAUDEM6Hi3s/b5m+Yr2N5xRDEwsu9mpEv9pSTSN3BYW/4q+YKYBaxS
         EPS1oVhC5aRhsxC73yzTe6WL6SngTSkoIZdCYU1E6l6mqj4vRrKKNoL9Opvd5TUgJdu+
         OaAn1wlB6oRoincbTu02uO5l0JC4uqGi5hHKkBQpbMzl4iwaddSdYxsMqiow9E2oMh7m
         Iv4IUaT9JtE9MorpZXVsuACbNecZ0TXkVlIQtFS1nBElteItPxnTe42RY0RKngls/hXG
         wgiakHo2+zhspHzUrS/hqXZ1yAZtYBn02MQn9ir0T5WLdP4qD/b4I+Co2KANzqrEkwsm
         XGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678201024;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D3Cr5iHChPhVIM0IBEr0zNr4m47UpuB7ZQNBapGvsMA=;
        b=cxYAaXtsIF46q/NSerui80KfpiLgJahXye+l3U5V1kbnkuUwNbXjzrutJ+Zj102AIr
         7KtFRPIuyci6rpBV3X6b/rvUUzVf+rxNXzjJU9usv1QOFMiS4977ou5qGVNOidU7PyOc
         4oTKEnqCIPYZdDgwFYvN7CYrwkYG0mkiWLho21vQAaHy7Xkx1Tb8aGO4lwgWQo8vzF5o
         KNrAxfQ4GAexnPl1yR1KrKMloxDHMJyiMeOBrlioOHxJRSU4n16fu3YQdJqdsdqwxXab
         yxuso33GVezAbAu0+gqYBxm+nBEwT+2G/K9X1yQAWVX2dxdIeJGPnlSmG+wqlzJ2sH4j
         6mxQ==
X-Gm-Message-State: AO0yUKW4jtN1KtUdBgRVlqfOXGSB1yHT25iFNlPI/z6xhYWgXvFk2/T7
	0LSzH4ZXubbi7D/vmG+3i9GlzRtXFoMYFrA+VgvA2A==
X-Google-Smtp-Source: AK7set/9HMCrF+azKo6YywINpZcVolMmW90oCUx+HqMoViVjHmvmFqQ4kHcS4RJgKU3KMXxpJW9El5ge0160PPUTuUw=
X-Received: by 2002:a81:b71c:0:b0:536:7529:55b4 with SMTP id
 v28-20020a81b71c000000b00536752955b4mr9438563ywh.3.1678201023901; Tue, 07 Mar
 2023 06:57:03 -0800 (PST)
MIME-Version: 1.0
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com> <20230224082332.GA5443@thinkpad>
 <bd153038-4427-1f11-1941-5f13fec01cf7@quicinc.com> <20230228063358.GA4839@thinkpad>
 <9BD62D8E-4E14-4269-B72D-C83EF4D43040@linaro.org> <20230303174036.GB6782@thinkpad>
 <30cf9717-dcca-e984-c506-c71b7f8e32cd@quicinc.com> <20230307125655.GC5599@thinkpad>
 <2afe8c7e-7e54-460f-7206-64a290beccfb@quicinc.com>
In-Reply-To: <2afe8c7e-7e54-460f-7206-64a290beccfb@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Mar 2023 16:56:53 +0200
Message-ID: <CAA8EJpo-_PXhBnKWD-TWEqY8+uAEjbRsrhJ7XO1PTcYV-MHV9Q@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific compatible
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, lpieralisi@kernel.org, kw@linux.com, 
	robh@kernel.org, bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-clk@vger.kernel.org, quic_srichara@quicinc.com, 
	quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com, 
	quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com, quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_065707_401072_4EEA8504 
X-CRM114-Status: GOOD (  32.67  )
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

T24gVHVlLCA3IE1hciAyMDIzIGF0IDE2OjQwLCBEZXZpIFByaXlhIDxxdWljX2Rldmlwcml5QHF1
aWNpbmMuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAzLzcvMjAyMyA2OjI2IFBNLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUdWUsIE1hciAwNywgMjAyMyBhdCAwMzoxNTowOFBN
ICswNTMwLCBEZXZpIFByaXlhIHdyb3RlOgo+ID4+Cj4gPj4KPiA+PiBPbiAzLzMvMjAyMyAxMTox
MCBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4+PiBPbiBGcmksIE1hciAwMywg
MjAyMyBhdCAwNToxNjo1OFBNICswMjAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+Pj4g
Mjgg0YTQtdCy0YDQsNC70Y8gMjAyMyDQsy4gMDg6MzM6NTggR01UKzAyOjAwLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4g0L/QuNGI0LXRgjoKPiA+Pj4+PiBPbiBUdWUs
IEZlYiAyOCwgMjAyMyBhdCAxMDo1Njo1M0FNICswNTMwLCBEZXZpIFByaXlhIHdyb3RlOgo+ID4+
Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+PiBPbiAyLzI0LzIwMjMgMTo1MyBQTSwgTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIHdyb3RlOgo+ID4+Pj4+Pj4gT24gVHVlLCBGZWIgMTQsIDIwMjMgYXQgMTA6MTE6
MjlQTSArMDUzMCwgRGV2aSBQcml5YSB3cm90ZToKPiA+Pj4+Pj4+PiBEb2N1bWVudCB0aGUgY29t
cGF0aWJsZSBmb3IgSVBROTU3NAo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+IEhpIE1hbmksIFRoYW5rcyBm
b3IgdGFraW5nIHRpbWUgdG8gcmV2aWV3IHRoZSBwYXRjaC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBZ
b3UgZGlkbid0IG1lbnRpb24gYWJvdXQgdGhlICJtc2ktcGFyZW50IiBwcm9wZXJ0eSB0aGF0IGlz
IGJlaW5nIGFkZGVkCj4gPj4+Pj4+PiBieSB0aGlzIHBhdGNoCj4gPj4+Pj4+IFN1cmUsIHdpbGwg
dXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZSBpbiB0aGUgbmV4dCBzcGluCj4gPj4+Pj4+Pgo+ID4+
Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IERldmkgUHJpeWEgPHF1aWNfZGV2aXByaXlAcXVpY2luYy5j
b20+Cj4gPj4+Pj4+Pj4gLS0tCj4gPj4+Pj4+Pj4gICAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9xY29tLHBjaWUueWFtbCAgICB8IDcyICsrKysrKysrKysrKysrKysrKy0KPiA+Pj4+Pj4+
PiAgICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Pj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiA+Pj4+Pj4+PiBpbmRleCA4NzI4MTdkNmQyYmQu
LmRhYmRmMjY4NGUyZCAxMDA2NDQKPiA+Pj4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4gPj4+Pj4+Pj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+ID4+Pj4+Pj4+
IEBAIC0yNiw2ICsyNiw3IEBAIHByb3BlcnRpZXM6Cj4gPj4+Pj4+Pj4gICAgICAgICAgICAgICAt
IHFjb20scGNpZS1pcHE4MDY0LXYyCj4gPj4+Pj4+Pj4gICAgICAgICAgICAgICAtIHFjb20scGNp
ZS1pcHE4MDc0Cj4gPj4+Pj4+Pj4gICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDc0LWdl
bjMKPiA+Pj4+Pj4+PiArICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPiA+Pj4+Pj4+PiAg
ICAgICAgICAgICAgIC0gcWNvbSxwY2llLW1zbTg5OTYKPiA+Pj4+Pj4+PiAgICAgICAgICAgICAg
IC0gcWNvbSxwY2llLXFjczQwNAo+ID4+Pj4+Pj4+ICAgICAgICAgICAgICAgLSBxY29tLHBjaWUt
c2E4NTQwcAo+ID4+Pj4+Pj4+IEBAIC00NCwxMSArNDUsMTEgQEAgcHJvcGVydGllczoKPiA+Pj4+
Pj4+PiAgICAgICByZWc6Cj4gPj4+Pj4+Pj4gICAgICAgICBtaW5JdGVtczogNAo+ID4+Pj4+Pj4+
IC0gICAgbWF4SXRlbXM6IDUKPiA+Pj4+Pj4+PiArICAgIG1heEl0ZW1zOiA2Cj4gPj4+Pj4+Pj4g
ICAgICAgcmVnLW5hbWVzOgo+ID4+Pj4+Pj4+ICAgICAgICAgbWluSXRlbXM6IDQKPiA+Pj4+Pj4+
PiAtICAgIG1heEl0ZW1zOiA1Cj4gPj4+Pj4+Pj4gKyAgICBtYXhJdGVtczogNgo+ID4+Pj4+Pj4+
ICAgICAgIGludGVycnVwdHM6Cj4gPj4+Pj4+Pj4gICAgICAgICBtaW5JdGVtczogMQo+ID4+Pj4+
Pj4+IEBAIC0xMDUsNiArMTA2LDggQEAgcHJvcGVydGllczoKPiA+Pj4+Pj4+PiAgICAgICAgIGl0
ZW1zOgo+ID4+Pj4+Pj4+ICAgICAgICAgICAtIGNvbnN0OiBwY2llcGh5Cj4gPj4+Pj4+Pj4gKyAg
bXNpLXBhcmVudDogdHJ1ZQo+ID4+Pj4+Pj4+ICsKPiA+Pj4+Pj4+PiAgICAgICBwb3dlci1kb21h
aW5zOgo+ID4+Pj4+Pj4+ICAgICAgICAgbWF4SXRlbXM6IDEKPiA+Pj4+Pj4+PiBAQCAtMTczLDYg
KzE3NiwyNyBAQCBhbGxPZjoKPiA+Pj4+Pj4+PiAgICAgICAgICAgICAgICAgLSBjb25zdDogcGFy
ZiAjIFF1YWxjb21tIHNwZWNpZmljIHJlZ2lzdGVycwo+ID4+Pj4+Pj4+ICAgICAgICAgICAgICAg
ICAtIGNvbnN0OiBjb25maWcgIyBQQ0llIGNvbmZpZ3VyYXRpb24gc3BhY2UKPiA+Pj4+Pj4+PiAr
ICAtIGlmOgo+ID4+Pj4+Pj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+ID4+Pj4+Pj4+ICsgICAgICAg
IGNvbXBhdGlibGU6Cj4gPj4+Pj4+Pj4gKyAgICAgICAgICBjb250YWluczoKPiA+Pj4+Pj4+PiAr
ICAgICAgICAgICAgZW51bToKPiA+Pj4+Pj4+PiArICAgICAgICAgICAgICAtIHFjb20scGNpZS1p
cHE5NTc0Cj4gPj4+Pj4+Pj4gKyAgICB0aGVuOgo+ID4+Pj4+Pj4+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+ID4+Pj4+Pj4+ICsgICAgICAgIHJlZzoKPiA+Pj4+Pj4+PiArICAgICAgICAgIG1pbkl0ZW1z
OiA1Cj4gPj4+Pj4+Pj4gKyAgICAgICAgICBtYXhJdGVtczogNgo+ID4+Pj4+Pj4+ICsgICAgICAg
IHJlZy1uYW1lczoKPiA+Pj4+Pj4+PiArICAgICAgICAgIG1pbkl0ZW1zOiA1Cj4gPj4+Pj4+Pj4g
KyAgICAgICAgICBpdGVtczoKPiA+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogZGJpICMg
RGVzaWduV2FyZSBQQ0llIHJlZ2lzdGVycwo+ID4+Pj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0
OiBlbGJpICMgRXh0ZXJuYWwgbG9jYWwgYnVzIGludGVyZmFjZSByZWdpc3RlcnMKPiA+Pj4+Pj4+
PiArICAgICAgICAgICAgLSBjb25zdDogYXR1ICMgQVRVIGFkZHJlc3Mgc3BhY2UKPiA+Pj4+Pj4+
PiArICAgICAgICAgICAgLSBjb25zdDogcGFyZiAjIFF1YWxjb21tIHNwZWNpZmljIHJlZ2lzdGVy
cwo+ID4+Pj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBjb25maWcgIyBQQ0llIGNvbmZpZ3Vy
YXRpb24gc3BhY2UKPiA+Pj4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYWdncl9ub2MgI1BD
SWUgYWdncl9ub2MKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBXaHkgZG8geW91IG5lZWQgdGhpcyByZWdp
b24gdW5saWtlIG90aGVyIFNvQ3M/IElzIHRoZSBkcml2ZXIgbWFraW5nIHVzZSBvZiBpdD8KPiA+
Pj4+Pj4gV2UgaGF2ZSB0aGUgYWdncl9ub2MgcmVnaW9uIGluIGlwcTk1NzQgdG8gYWNoaWV2ZSBo
aWdoZXIgdGhyb3VnaHB1dCAmIHRvCj4gPj4+Pj4+IGhhbmRsZSBtdWx0aXBsZSBQQ0llIGluc3Rh
bmNlcy4gVGhlIGRyaXZlciB1c2VzIGl0IHRvIHJhdGUgYWRhcHQgMS1sYW5lIFBDSWUKPiA+Pj4+
Pj4gY2xvY2tzLiBNeSBiYWQsIG1pc3NlZCBpdC4gV2lsbCBhZGQgdGhlIGRyaXZlciBjaGFuZ2Vz
IGluIFYyLgo+ID4+Pj4+Cj4gPj4+Pj4gSG1tLCB0aGlzIGlzIHNvbWV0aGluZyBuZXcuIEhvdyBj
YW4geW91IGFjaGlldmUgaGlnaGVyIHRocm91Z2hwdXQgd2l0aCB0aGlzCj4gPj4+Pj4gcmVnaW9u
PyBDYW4geW91IGV4cGxhaW4gbW9yZSBvbiBob3cgaXQgaXMgdXNlZD8KPiA+Pj4+Cj4gPj4+PiBC
YXNlZCBvbiB0aGUgbmFtZSBvZiB0aGUgcmVnaW9uLCBpdCBsb29rcyBsaWtlIGl0IGlzIGFuIGlu
dGVyY29ubmVjdCByZWdpb24uCj4gPj4+Pgo+ID4+Pgo+ID4+PiBXZWxsLCB3ZSBvbmx5IGhhdmUg
QkNNIGJhc2VkIGludGVyY29ubmVjdHMgc28gZmFyLiBUaGF0J3Mgd2h5IEkgd2FzIGN1cmlvdXMK
PiA+Pj4gYWJvdXQgdGhpcyByZWdpb24gYW5kIGl0cyBwdXJwb3NlLgo+ID4+IEZvciBjb25uZWN0
ZWQgUENJZSBzbGF2ZSBkZXZpY2VzIHRoYXQgYXJlIHJ1bm5pbmcgYXQgZnJlcXVlbmN5IGxlc3Nl
cgo+ID4+IHRoYW4gdGhlIEFOT0MgZnJlcXVlbmN5ICgzNDJNSHopLCB0aGUgcmF0ZSBhZGFwdGVy
IG9mIEFOT0MgbmVlZHMgdG8gYmUKPiA+PiBjb25maWd1cmVkCj4gPj4+Cj4gPj4+PiBEZXZpLCBp
ZiB0aGlzIGlzIHRoZSBjYXNlLCB0aGVuIHlvdSBoYXZlIHRvIGhhbmRsZSBpdCB0aHJvdWdoIHRo
ZSBpbnRlcmNvbm5lY3QgZHJpdmVyLCByYXRoZXIgdGhhbiBwb2tpbmcgZGlyZWN0bHkgaW50byB0
aGVzZSByZWdpc3RlcnMuCj4gPj4+Cj4gPj4+IElmIHRoYXQgc28sIGl0IGRvZXNuJ3QgbmVlZCB0
byBiZSBhZGRlZCBpbiB0aGlzIHNlcmllcyBpdHNlbGYuIEkgYmVsaWV2ZSB0aGF0Cj4gPj4+IHdp
dGhvdXQgYWdncl9ub2MgcmVnaW9uLCB0aGUgUENJZSBjb250cm9sbGVyIGNhbiBzdGlsbCBmdW5j
dGlvbiBwcm9wZXJseSB3aXRoCj4gPj4+IHJlZHVjZWQgcGVyZm9ybWFuY2UuIEJ1dCB5b3UgY2Fu
IGFkZCB0aGUgaW50ZXJjb25uZWN0IHN1cHBvcnQgbGF0ZXIgYXMgYQo+ID4+PiBzZXBhcmF0ZSBz
ZXJpZXMuCj4gPj4gU3VyZSwgb2theS4gVGhlIEFOT0MgcnVucyBhdCBhIGZpeGVkIGZyZXF1ZW5j
eSBvZiAzNDJNSHogYW5kIHRoZQo+ID4+IGludGVyY29ubmVjdCBjbG9ja3MgYXJlIG5vdCBzY2Fs
ZWQuIFRoZSBhZ2dyX25vYyByZWdpc3RlciBpcyBqdXN0IGEgbWFnaWMKPiA+PiByZWdpc3RlciBm
b3IgY29uZmlndXJpbmcgaXQncyByYXRlIGFkYXB0ZXIgdG8gZW5zdXJlIG5vIHdhaXQgY3ljbGVz
IGFyZQo+ID4+IGluc2VydGVkLgo+ID4+Cj4gPgo+ID4gSWYgdGhlIHB1cnBvc2Ugb2YgdGhlIGFn
Z3Jfbm9jIHJlZ2lvbiBpcyB0byBjb25maWd1cmUgdGhlIGludGVyY29ubmVjdCBjbG9jaywKPiA+
IHRoZW4gaXQgc2hvdWxkIGJlIG1vZGVsZWQgYXMgYW4gaW50ZXJjb25uZWN0IGRyaXZlci4KPiBD
YW4gd2UgdXNlICdzeXNjb24nIGhlcmUsIGFzIHdlIGFyZSBub3Qgc2NhbGluZyB0aGUgaW50ZXJj
b25uZWN0Cj4gZnJlcXVlbmN5IGFuZCB0aGlzIGlzIGp1c3QgYSBzaW5nbGUgcmVnaXN0ZXIgd3Jp
dGUgZm9yIHNldHRpbmcKPiB0aGUgcmF0ZSBhZGFwdGVyPwoKSXQgc2hvdWxkIGJlIGRvbmUgb3V0
c2lkZSBvZiB0aGUgUENJZSBkcml2ZXIuCkl0IGlzIG5vdCAianVzdCBhIHNpbmdsZSByZWdpc3Rl
ciIuIEl0IGlzIGFsc28gc2V0dGluZyB0aGUgYW5vYy9zbm9jCmNsb2NrcyBmb3IgVVNCLiBBbmQg
bWF5YmUgc29tZXRoaW5nIGVsc2UsIHdoaWNoIHdlIGhhdmVuJ3Qgc2VlbiBhdAp0aGlzIG1vbWVu
dC4gWW91IGFyZSBzdGlsbCBzZXR0aW5nIHVwIHRoZSBOb0MsIGV2ZW4gaWYgdGhlIGljYwpmcmVx
dWVuY3kgaXMgbm90IHNjYWxlZC4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
