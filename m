Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77D2C678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wdktb0Z0mton2fFGrihgg0YB5a1LkA8jQb4ya05NPMU=; b=lnBJb/zaERIIOw
	bJt33QM0CeXUBBLdpDQc2WdeAL6yU+3U+2Q+BLYHW81GZTEir8ayotRncGaI+RmHxcw7JZwttoZH/
	eR8DaBsLFIBfponqNPwOuewHFLfsaZI5LZMdzKef97c0BmhEH+Nd5mQemFDXGViH9lE3va49JQ1XT
	Mth7+T0l7Ab2qy0buUDGFWob1w2F5EQpK2BhiUw14gSfob5r9ODExOGM+7qMKs3uTZ7B1txF3atVN
	VOn+Ylq7F1GmXM6Bkc2GnR5efkR99zX392tQ1jjplNo0QRL1YpZBKiakvDHQCqo5yDu9pJ1khI27f
	2wUrKwYj1t7Pdi363m9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVf8-00HVUi-3d; Tue, 07 Mar 2023 11:39:22 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVf4-00HVRD-E6
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 11:39:20 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-53916ab0c6bso239245887b3.7
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 03:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678189150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2QEPXAzp21Sp6krYXcMnpxNWR2KzEzr6+4RDpVrUlI=;
        b=MZdIoa/638A2Xrr3aud37732QkFaaI23u93mUrKyx6hNqR+dj0TaQC+E8tBxYlg39i
         L/nH+SGtV7eGgg/PH796jVppU9Ei/QUJfz6q87mKD5GhxAxOoDPEgO/cZatjxymQzf37
         42vkTmcghIT1E1yUCpWhoKqAccG+KBBVheQz0Zfzfky2xjIOWnWNtgdtNSm8xyvhMhkK
         c81jL8WhZzIZytyFxESA5Rk4LOth1GYguzxCQNaJ84tL7NMeJWBTOJzoVEbunqIGtfH8
         XFURYFjvPIvO1pEdUE6hlmMg6Ibn2XB+FlNLycbR4iPAMi/LBU+Sc2jGQvrVRa1Z5UvN
         jewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678189150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p2QEPXAzp21Sp6krYXcMnpxNWR2KzEzr6+4RDpVrUlI=;
        b=cbG7dSwOeGGbLooVaF8qBiB1EZzOHYvKDzPR2UjIujZt6tMzZk30Itlb2fcBcJCtR8
         dVv0rn/RFBD97dszTOxKl2CnNj8gNE/4qLWEO48vE2WxuLXETWvOhjPTnmoPpwEuX8JA
         Xfkyz/J+xKnVYaKSHaqM+waHHgKe066jw9KYpBVtxp5EH3pOVKgFGadYZOp1IdBNI7sE
         /nLdv+yq4Tpih42Mc3xhNJoqZmBGTcVS39Caof/GzxzSqNR1UWDWviRY6NsdVmkxm3IK
         c+3Br3rFZBGHLy0jGz1ykzkume6NWJ1s3aKJRyZ05smp+q2Li7Iu8guolSKyRO9uoLM2
         ulKQ==
X-Gm-Message-State: AO0yUKVtUZXz0gV/j0n28kjJy0upK5T5Dh8BI/8WR8GaGcTY0TY0ri/E
	mJCBehpcSc3jsvKP6qPfUIZeRbQVE7Y1f3kBDfiMfA==
X-Google-Smtp-Source: AK7set+pIPRCkUCY1DQn3/UnCDXcMdFY3wcXRpn0sqH288ZQWy/jCdAUknswqsGd/FYMEDrTW7d8/OAqi9oBGUQj+6g=
X-Received: by 2002:a81:b243:0:b0:52e:d380:ab14 with SMTP id
 q64-20020a81b243000000b0052ed380ab14mr7473835ywh.3.1678189150311; Tue, 07 Mar
 2023 03:39:10 -0800 (PST)
MIME-Version: 1.0
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
 <20230214164135.17039-2-quic_devipriy@quicinc.com> <20230224082332.GA5443@thinkpad>
 <bd153038-4427-1f11-1941-5f13fec01cf7@quicinc.com> <20230228063358.GA4839@thinkpad>
 <9BD62D8E-4E14-4269-B72D-C83EF4D43040@linaro.org> <20230303174036.GB6782@thinkpad>
 <30cf9717-dcca-e984-c506-c71b7f8e32cd@quicinc.com>
In-Reply-To: <30cf9717-dcca-e984-c506-c71b7f8e32cd@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Mar 2023 13:38:59 +0200
Message-ID: <CAA8EJpohnJvFKMc5Ty4CQF65Gt1Kknqsf1B4mFZq4TvW7_dcnw@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific compatible
To: Devi Priya <quic_devipriy@quicinc.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, agross@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, lpieralisi@kernel.org, kw@linux.com, 
	robh@kernel.org, bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, p.zabel@pengutronix.de, svarbanov@mm-sol.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, 
	quic_srichara@quicinc.com, quic_gokulsri@quicinc.com, 
	quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com, 
	quic_arajkuma@quicinc.com, quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_033918_505597_A871DC5D 
X-CRM114-Status: GOOD (  31.83  )
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

T24gVHVlLCA3IE1hciAyMDIzIGF0IDExOjQ1LCBEZXZpIFByaXlhIDxxdWljX2Rldmlwcml5QHF1
aWNpbmMuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiAzLzMvMjAyMyAxMToxMCBQTSwgTWFuaXZhbm5h
biBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gT24gRnJpLCBNYXIgMDMsIDIwMjMgYXQgMDU6MTY6NThQ
TSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+PiAyOCDRhNC10LLRgNCw0LvRjyAy
MDIzINCzLiAwODozMzo1OCBHTVQrMDI6MDAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBr
ZXJuZWwub3JnPiDQv9C40YjQtdGCOgo+ID4+PiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAxMDo1
Njo1M0FNICswNTMwLCBEZXZpIFByaXlhIHdyb3RlOgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiBPbiAy
LzI0LzIwMjMgMTo1MyBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4+Pj4+IE9u
IFR1ZSwgRmViIDE0LCAyMDIzIGF0IDEwOjExOjI5UE0gKzA1MzAsIERldmkgUHJpeWEgd3JvdGU6
Cj4gPj4+Pj4+IERvY3VtZW50IHRoZSBjb21wYXRpYmxlIGZvciBJUFE5NTc0Cj4gPj4+Pj4+Cj4g
Pj4+PiBIaSBNYW5pLCBUaGFua3MgZm9yIHRha2luZyB0aW1lIHRvIHJldmlldyB0aGUgcGF0Y2gu
Cj4gPj4+Pj4KPiA+Pj4+PiBZb3UgZGlkbid0IG1lbnRpb24gYWJvdXQgdGhlICJtc2ktcGFyZW50
IiBwcm9wZXJ0eSB0aGF0IGlzIGJlaW5nIGFkZGVkCj4gPj4+Pj4gYnkgdGhpcyBwYXRjaAo+ID4+
Pj4gU3VyZSwgd2lsbCB1cGRhdGUgdGhlIGNvbW1pdCBtZXNzYWdlIGluIHRoZSBuZXh0IHNwaW4K
PiA+Pj4+Pgo+ID4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEZXZpIFByaXlhIDxxdWljX2Rldmlwcml5
QHF1aWNpbmMuY29tPgo+ID4+Pj4+PiAtLS0KPiA+Pj4+Pj4gICAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sICAgIHwgNzIgKysrKysrKysrKysrKysrKysrLQo+ID4+
Pj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNzAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiA+Pj4+Pj4KPiA+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4gPj4+Pj4+IGluZGV4IDg3MjgxN2Q2ZDJiZC4uZGFi
ZGYyNjg0ZTJkIDEwMDY0NAo+ID4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sCj4gPj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLnlhbWwKPiA+Pj4+Pj4gQEAgLTI2LDYg
KzI2LDcgQEAgcHJvcGVydGllczoKPiA+Pj4+Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlw
cTgwNjQtdjIKPiA+Pj4+Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQKPiA+Pj4+
Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQtZ2VuMwo+ID4+Pj4+PiArICAgICAg
ICAgIC0gcWNvbSxwY2llLWlwcTk1NzQKPiA+Pj4+Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2ll
LW1zbTg5OTYKPiA+Pj4+Pj4gICAgICAgICAgICAgIC0gcWNvbSxwY2llLXFjczQwNAo+ID4+Pj4+
PiAgICAgICAgICAgICAgLSBxY29tLHBjaWUtc2E4NTQwcAo+ID4+Pj4+PiBAQCAtNDQsMTEgKzQ1
LDExIEBAIHByb3BlcnRpZXM6Cj4gPj4+Pj4+ICAgICAgcmVnOgo+ID4+Pj4+PiAgICAgICAgbWlu
SXRlbXM6IDQKPiA+Pj4+Pj4gLSAgICBtYXhJdGVtczogNQo+ID4+Pj4+PiArICAgIG1heEl0ZW1z
OiA2Cj4gPj4+Pj4+ICAgICAgcmVnLW5hbWVzOgo+ID4+Pj4+PiAgICAgICAgbWluSXRlbXM6IDQK
PiA+Pj4+Pj4gLSAgICBtYXhJdGVtczogNQo+ID4+Pj4+PiArICAgIG1heEl0ZW1zOiA2Cj4gPj4+
Pj4+ICAgICAgaW50ZXJydXB0czoKPiA+Pj4+Pj4gICAgICAgIG1pbkl0ZW1zOiAxCj4gPj4+Pj4+
IEBAIC0xMDUsNiArMTA2LDggQEAgcHJvcGVydGllczoKPiA+Pj4+Pj4gICAgICAgIGl0ZW1zOgo+
ID4+Pj4+PiAgICAgICAgICAtIGNvbnN0OiBwY2llcGh5Cj4gPj4+Pj4+ICsgIG1zaS1wYXJlbnQ6
IHRydWUKPiA+Pj4+Pj4gKwo+ID4+Pj4+PiAgICAgIHBvd2VyLWRvbWFpbnM6Cj4gPj4+Pj4+ICAg
ICAgICBtYXhJdGVtczogMQo+ID4+Pj4+PiBAQCAtMTczLDYgKzE3NiwyNyBAQCBhbGxPZjoKPiA+
Pj4+Pj4gICAgICAgICAgICAgICAgLSBjb25zdDogcGFyZiAjIFF1YWxjb21tIHNwZWNpZmljIHJl
Z2lzdGVycwo+ID4+Pj4+PiAgICAgICAgICAgICAgICAtIGNvbnN0OiBjb25maWcgIyBQQ0llIGNv
bmZpZ3VyYXRpb24gc3BhY2UKPiA+Pj4+Pj4gKyAgLSBpZjoKPiA+Pj4+Pj4gKyAgICAgIHByb3Bl
cnRpZXM6Cj4gPj4+Pj4+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gPj4+Pj4+ICsgICAgICAgICAg
Y29udGFpbnM6Cj4gPj4+Pj4+ICsgICAgICAgICAgICBlbnVtOgo+ID4+Pj4+PiArICAgICAgICAg
ICAgICAtIHFjb20scGNpZS1pcHE5NTc0Cj4gPj4+Pj4+ICsgICAgdGhlbjoKPiA+Pj4+Pj4gKyAg
ICAgIHByb3BlcnRpZXM6Cj4gPj4+Pj4+ICsgICAgICAgIHJlZzoKPiA+Pj4+Pj4gKyAgICAgICAg
ICBtaW5JdGVtczogNQo+ID4+Pj4+PiArICAgICAgICAgIG1heEl0ZW1zOiA2Cj4gPj4+Pj4+ICsg
ICAgICAgIHJlZy1uYW1lczoKPiA+Pj4+Pj4gKyAgICAgICAgICBtaW5JdGVtczogNQo+ID4+Pj4+
PiArICAgICAgICAgIGl0ZW1zOgo+ID4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogZGJpICMg
RGVzaWduV2FyZSBQQ0llIHJlZ2lzdGVycwo+ID4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDog
ZWxiaSAjIEV4dGVybmFsIGxvY2FsIGJ1cyBpbnRlcmZhY2UgcmVnaXN0ZXJzCj4gPj4+Pj4+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBhdHUgIyBBVFUgYWRkcmVzcyBzcGFjZQo+ID4+Pj4+PiArICAg
ICAgICAgICAgLSBjb25zdDogcGFyZiAjIFF1YWxjb21tIHNwZWNpZmljIHJlZ2lzdGVycwo+ID4+
Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogY29uZmlnICMgUENJZSBjb25maWd1cmF0aW9uIHNw
YWNlCj4gPj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBhZ2dyX25vYyAjUENJZSBhZ2dyX25v
Ywo+ID4+Pj4+Cj4gPj4+Pj4gV2h5IGRvIHlvdSBuZWVkIHRoaXMgcmVnaW9uIHVubGlrZSBvdGhl
ciBTb0NzPyBJcyB0aGUgZHJpdmVyIG1ha2luZyB1c2Ugb2YgaXQ/Cj4gPj4+PiBXZSBoYXZlIHRo
ZSBhZ2dyX25vYyByZWdpb24gaW4gaXBxOTU3NCB0byBhY2hpZXZlIGhpZ2hlciB0aHJvdWdocHV0
ICYgdG8KPiA+Pj4+IGhhbmRsZSBtdWx0aXBsZSBQQ0llIGluc3RhbmNlcy4gVGhlIGRyaXZlciB1
c2VzIGl0IHRvIHJhdGUgYWRhcHQgMS1sYW5lIFBDSWUKPiA+Pj4+IGNsb2Nrcy4gTXkgYmFkLCBt
aXNzZWQgaXQuIFdpbGwgYWRkIHRoZSBkcml2ZXIgY2hhbmdlcyBpbiBWMi4KPiA+Pj4KPiA+Pj4g
SG1tLCB0aGlzIGlzIHNvbWV0aGluZyBuZXcuIEhvdyBjYW4geW91IGFjaGlldmUgaGlnaGVyIHRo
cm91Z2hwdXQgd2l0aCB0aGlzCj4gPj4+IHJlZ2lvbj8gQ2FuIHlvdSBleHBsYWluIG1vcmUgb24g
aG93IGl0IGlzIHVzZWQ/Cj4gPj4KPiA+PiBCYXNlZCBvbiB0aGUgbmFtZSBvZiB0aGUgcmVnaW9u
LCBpdCBsb29rcyBsaWtlIGl0IGlzIGFuIGludGVyY29ubmVjdCByZWdpb24uCj4gPj4KPiA+Cj4g
PiBXZWxsLCB3ZSBvbmx5IGhhdmUgQkNNIGJhc2VkIGludGVyY29ubmVjdHMgc28gZmFyLiBUaGF0
J3Mgd2h5IEkgd2FzIGN1cmlvdXMKPiA+IGFib3V0IHRoaXMgcmVnaW9uIGFuZCBpdHMgcHVycG9z
ZS4KPiBGb3IgY29ubmVjdGVkIFBDSWUgc2xhdmUgZGV2aWNlcyB0aGF0IGFyZSBydW5uaW5nIGF0
IGZyZXF1ZW5jeSBsZXNzZXIKPiB0aGFuIHRoZSBBTk9DIGZyZXF1ZW5jeSAoMzQyTUh6KSwgdGhl
IHJhdGUgYWRhcHRlciBvZiBBTk9DIG5lZWRzIHRvIGJlCj4gY29uZmlndXJlZAo+ID4KPiA+PiBE
ZXZpLCBpZiB0aGlzIGlzIHRoZSBjYXNlLCB0aGVuIHlvdSBoYXZlIHRvIGhhbmRsZSBpdCB0aHJv
dWdoIHRoZSBpbnRlcmNvbm5lY3QgZHJpdmVyLCByYXRoZXIgdGhhbiBwb2tpbmcgZGlyZWN0bHkg
aW50byB0aGVzZSByZWdpc3RlcnMuCj4gPgo+ID4gSWYgdGhhdCBzbywgaXQgZG9lc24ndCBuZWVk
IHRvIGJlIGFkZGVkIGluIHRoaXMgc2VyaWVzIGl0c2VsZi4gSSBiZWxpZXZlIHRoYXQKPiA+IHdp
dGhvdXQgYWdncl9ub2MgcmVnaW9uLCB0aGUgUENJZSBjb250cm9sbGVyIGNhbiBzdGlsbCBmdW5j
dGlvbiBwcm9wZXJseSB3aXRoCj4gPiByZWR1Y2VkIHBlcmZvcm1hbmNlLiBCdXQgeW91IGNhbiBh
ZGQgdGhlIGludGVyY29ubmVjdCBzdXBwb3J0IGxhdGVyIGFzIGEKPiA+IHNlcGFyYXRlIHNlcmll
cy4KPiBTdXJlLCBva2F5LiBUaGUgQU5PQyBydW5zIGF0IGEgZml4ZWQgZnJlcXVlbmN5IG9mIDM0
Mk1IeiBhbmQgdGhlCj4gaW50ZXJjb25uZWN0IGNsb2NrcyBhcmUgbm90IHNjYWxlZC4gVGhlIGFn
Z3Jfbm9jIHJlZ2lzdGVyIGlzIGp1c3QgYQo+IG1hZ2ljIHJlZ2lzdGVyIGZvciBjb25maWd1cmlu
ZyBpdCdzIHJhdGUgYWRhcHRlciB0byBlbnN1cmUgbm8gd2FpdAo+IGN5Y2xlcyBhcmUgaW5zZXJ0
ZWQuCgpJIGhhdmUgYmVlbiBoZXNpdGFudCBhdCBzb21lIHBvaW50LCBidXQgdGhpcyBsb29rcyBt
b3JlIGFuZCBtb3JlIGxpa2UKYSBzcGVjaWFsIGtpbmQgb2YgaW50ZXJjb25uZWN0LiBQbGVhc2Ug
Y29uc2lkZXIgbW92aW5nIGFsbCB0aGUgTm9DCnN0dWZmIGludG8gYSBzZXBhcmF0ZSBkcml2ZXIg
aW1wbGVtZW50aW5nIHRoZSBJQ0MgQVBJLgoKPgo+ID4KPiA+IFRoYW5rcywKPiA+IE1hbmkKPiA+
Cj4gPj4KPiA+Pgo+ID4+Pgo+ID4+PiBUaGFua3MsCj4gPj4+IE1hbmkKPiA+Pj4KPiA+Pj4+Pgo+
ID4+Pj4+IFRoYW5rcywKPiA+Pj4+PiBNYW5pCj4gPj4+Pj4KPiA+Pj4+Pj4gKwo+ID4+Pj4+PiAg
ICAgIC0gaWY6Cj4gPj4+Pj4+ICAgICAgICAgIHByb3BlcnRpZXM6Cj4gPj4+Pj4+ICAgICAgICAg
ICAgY29tcGF0aWJsZToKPiA+Pj4+Pj4gQEAgLTM2NSw2ICszODksMzkgQEAgYWxsT2Y6Cj4gPj4+
Pj4+ICAgICAgICAgICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+ID4+Pj4+PiAgICAg
ICAgICAgICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFzdGVyIFN0aWNreSByZXNl
dAo+ID4+Pj4+PiArICAtIGlmOgo+ID4+Pj4+PiArICAgICAgcHJvcGVydGllczoKPiA+Pj4+Pj4g
KyAgICAgICAgY29tcGF0aWJsZToKPiA+Pj4+Pj4gKyAgICAgICAgICBjb250YWluczoKPiA+Pj4+
Pj4gKyAgICAgICAgICAgIGVudW06Cj4gPj4+Pj4+ICsgICAgICAgICAgICAgIC0gcWNvbSxwY2ll
LWlwcTk1NzQKPiA+Pj4+Pj4gKyAgICB0aGVuOgo+ID4+Pj4+PiArICAgICAgcHJvcGVydGllczoK
PiA+Pj4+Pj4gKyAgICAgICAgY2xvY2tzOgo+ID4+Pj4+PiArICAgICAgICAgIG1pbkl0ZW1zOiA2
Cj4gPj4+Pj4+ICsgICAgICAgICAgbWF4SXRlbXM6IDYKPiA+Pj4+Pj4gKyAgICAgICAgY2xvY2st
bmFtZXM6Cj4gPj4+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4gPj4+Pj4+ICsgICAgICAgICAgICAt
IGNvbnN0OiBhaGIgICMgQUhCIGNsb2NrCj4gPj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBh
dXggICMgQXV4aWxpYXJ5IGNsb2NrCj4gPj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlf
bSAjIEFYSSBNYXN0ZXIgY2xvY2sKPiA+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGF4aV9z
ICMgQVhJIFNsYXZlIGNsb2NrCj4gPj4+Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBheGlfYnJp
ZGdlICMgQVhJIGJyaWRnZSBjbG9jawo+ID4+Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogcmNo
bmcKPiA+Pj4+Pj4gKyAgICAgICAgcmVzZXRzOgo+ID4+Pj4+PiArICAgICAgICAgIG1pbkl0ZW1z
OiA4Cj4gPj4+Pj4+ICsgICAgICAgICAgbWF4SXRlbXM6IDgKPiA+Pj4+Pj4gKyAgICAgICAgcmVz
ZXQtbmFtZXM6Cj4gPj4+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4gPj4+Pj4+ICsgICAgICAgICAg
ICAtIGNvbnN0OiBwaXBlICMgUElQRSByZXNldAo+ID4+Pj4+PiArICAgICAgICAgICAgLSBjb25z
dDogc3RpY2t5ICMgQ29yZSBTdGlja3kgcmVzZXQKPiA+Pj4+Pj4gKyAgICAgICAgICAgIC0gY29u
c3Q6IGF4aV9zX3N0aWNreSAjIEFYSSBTbGF2ZSBTdGlja3kgcmVzZXQKPiA+Pj4+Pj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IGF4aV9zICMgQVhJIFNsYXZlIHJlc2V0Cj4gPj4+Pj4+ICsgICAgICAg
ICAgICAtIGNvbnN0OiBheGlfbV9zdGlja3kgIyBBWEkgTWFzdGVyIFN0aWNreSByZXNldAo+ID4+
Pj4+PiArICAgICAgICAgICAgLSBjb25zdDogYXhpX20gIyBBWEkgTWFzdGVyIHJlc2V0Cj4gPj4+
Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBhdXggIyBBVVggUmVzZXQKPiA+Pj4+Pj4gKyAgICAg
ICAgICAgIC0gY29uc3Q6IGFoYiAjIEFIQiBSZXNldAo+ID4+Pj4+PiArCj4gPj4+Pj4+ICAgICAg
LSBpZjoKPiA+Pj4+Pj4gICAgICAgICAgcHJvcGVydGllczoKPiA+Pj4+Pj4gICAgICAgICAgICBj
b21wYXRpYmxlOgo+ID4+Pj4+PiBAQCAtNjgxLDYgKzczOCwxNiBAQCBhbGxPZjoKPiA+Pj4+Pj4g
ICAgICAgICAgICAtIGludGVyY29ubmVjdHMKPiA+Pj4+Pj4gICAgICAgICAgICAtIGludGVyY29u
bmVjdC1uYW1lcwo+ID4+Pj4+PiArICAtIGlmOgo+ID4+Pj4+PiArICAgICAgcHJvcGVydGllczoK
PiA+Pj4+Pj4gKyAgICAgICAgY29tcGF0aWJsZToKPiA+Pj4+Pj4gKyAgICAgICAgICBjb250YWlu
czoKPiA+Pj4+Pj4gKyAgICAgICAgICAgIGVudW06Cj4gPj4+Pj4+ICsgICAgICAgICAgICAgIC0g
cWNvbSxwY2llLWlwcTk1NzQKPiA+Pj4+Pj4gKyAgICB0aGVuOgo+ID4+Pj4+PiArICAgICAgcmVx
dWlyZWQ6Cj4gPj4+Pj4+ICsgICAgICAgIC0gbXNpLXBhcmVudAo+ID4+Pj4+PiArCj4gPj4+Pj4+
ICAgICAgLSBpZjoKPiA+Pj4+Pj4gICAgICAgICAgbm90Ogo+ID4+Pj4+PiAgICAgICAgICAgIHBy
b3BlcnRpZXM6Cj4gPj4+Pj4+IEBAIC02OTMsNiArNzYwLDcgQEAgYWxsT2Y6Cj4gPj4+Pj4+ICAg
ICAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE4MDY0djIKPiA+Pj4+Pj4gICAgICAgICAg
ICAgICAgICAgIC0gcWNvbSxwY2llLWlwcTgwNzQKPiA+Pj4+Pj4gICAgICAgICAgICAgICAgICAg
IC0gcWNvbSxwY2llLWlwcTgwNzQtZ2VuMwo+ID4+Pj4+PiArICAgICAgICAgICAgICAgIC0gcWNv
bSxwY2llLWlwcTk1NzQKPiA+Pj4+Pj4gICAgICAgICAgICAgICAgICAgIC0gcWNvbSxwY2llLXFj
czQwNAo+ID4+Pj4+PiAgICAgICAgdGhlbjoKPiA+Pj4+Pj4gICAgICAgICAgcmVxdWlyZWQ6Cj4g
Pj4+Pj4+IC0tCj4gPj4+Pj4+IDIuMTcuMQo+ID4+Pj4+Pgo+ID4+Pj4+Cj4gPj4+PiBUaGFua3Ms
Cj4gPj4+PiBEZXZpIFByaXlhCj4gPj4+Cj4gPj4KPiA+Cj4gVGhhbmtzLAo+IERldmkgUHJpeWEK
CgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
