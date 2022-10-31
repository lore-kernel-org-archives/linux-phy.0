Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3915BFA3743
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 15:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoGTS2F6lSXNBE3JkhWBDGmNsdRvxwQw2X2FQOTT1fc=; b=DtEjXQAS+qN1Qq
	TabJAiK80dTL+0WG/G6Mo94XbW5JSHhIh393oxyHXbS5ymAiv+AtWpOn9gD55Jx0cz8R7KtWO3wFz
	D+K/xvVzXXv6JdtpndEDJXfD/QB4LxTiI0KKKI45jmi3Kw63PHZYXK74WJY50LnNnDgHRdhGiL6pQ
	Xg69qPSVMDtzdHZEK27mkt/PUmWaHoMTw6BQuSYT/q9No5zQmeT97sfG9LXBzln7Ho3I71M7lbMWL
	4qtNvAJRip5aYhI6IFfQNhx7uOFmC4e+mU/ly+cK5eSSIWup9zZPAULZSJnwo1e3anUd7HA/HVr0X
	vXlpnReSlLZsGX9oeBeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opWsu-00CfVS-I8; Mon, 31 Oct 2022 15:39:32 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opWsr-00CfUC-OA
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 15:39:31 +0000
Received: by mail-pj1-x1033.google.com with SMTP id d13-20020a17090a3b0d00b00213519dfe4aso10610607pjc.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 08:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GDJlQVCguNnJGzrf7cy1BrTUPSikkGc5f2fzu23Hw8E=;
        b=WRBu6OGXkoxGY9UDJlisGfoLlWfiXqVHG1Cnz3WRejo/gU3au2sQfiQ2tkakym9Xvo
         iH0CoovbBegwAiep1sHg4TttXjjq/HrCIkyI5/TCaJ/H1IvYg1JbIrhO+s7yVMVLua/z
         PpUHd3lFUJZDfkqQOe5GQoNE02nWPKbltKJPZ5xwKdhWQ6o3Cr0QxictvbOI80ElcM0p
         HiVEDIlcAC13c7U2uQ2TLdQKZNhDaf3ENAUc+8Q1XXgGxebLZa30nags0BnoeAp4nlFu
         WESqHLfEHr+Q/91YoMfMixV2mv12PzOybQqyz88iiau13lhaZ2on32Go4ucT9oqwOR2V
         5HCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GDJlQVCguNnJGzrf7cy1BrTUPSikkGc5f2fzu23Hw8E=;
        b=UE0bexya+9K2dqy0AqLJoZhbQpu5zqrUIlz5K0NaNG2QZgW7b2UwhS2RV7kWIRhwTn
         Ajv/rYwZq63sLrjdQUNcW96BNCh/5tPnnaPBSRmcAK7afZfwpYbFB8SUpzXA0QDNyDMb
         Oy/odrHFxc78QMTWhTZZNJRaqNWxICQ41+J9+/jNw+SMldQyfWN+E6c+iWQ73RDHSSin
         XYuTQkqQo56MT5wh9DGsNnx8W7NS2z1TeUnODVYuJRI8l1Aj/Een7yG1aFQRuQPmiep5
         ewj5fICo2v6S+fk4sjSwrzfvlnNWB38msItDfnVgWMMZE5bFB5Nyz+vM15uT/U+w+pzs
         WqUg==
X-Gm-Message-State: ACrzQf3xQkNFnanG0RlM85TkOtBoVerbD7iXQEQH/8T4ixofYhH8omWy
	UQH6SDCtIDm9EbqVREPxrRw/
X-Google-Smtp-Source: AMsMyM6vZZ75FfRX28onYwNDU8BBGjMy3OIm0+QuUmPhw/ZrPNPrK/WEn/ojZGHcsog6PjRh9KLgjQ==
X-Received: by 2002:a17:90a:6b0d:b0:213:b85a:3bd4 with SMTP id v13-20020a17090a6b0d00b00213b85a3bd4mr12287233pjj.169.1667230768366;
        Mon, 31 Oct 2022 08:39:28 -0700 (PDT)
Received: from thinkpad ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q5-20020a17090311c500b0017f49b41c12sm4628832plh.173.2022.10.31.08.39.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 08:39:27 -0700 (PDT)
Date: Mon, 31 Oct 2022 21:09:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	konrad.dybcio@somainline.org, robh+dt@kernel.org,
	quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: Re: [PATCH 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Message-ID: <20221031153919.GA12738@thinkpad>
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
 <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_083929_828210_75D315FB 
X-CRM114-Status: GOOD (  34.78  )
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

T24gU3VuLCBPY3QgMzAsIDIwMjIgYXQgMTI6NDg6MjFBTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAyOS8xMC8yMDIyIDE3OjE2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBTdGFydGluZyBmcm9tIFVGUyBjb250cm9sbGVyIHY0LCBRY29tIHN1cHBvcnRzIGR1
YWwgZ2VhciBtb2RlIChpLmUuLCB0aGUKPiA+IGNvbnRyb2xsZXIvUEhZIGNhbiBiZSBjb25maWd1
cmVkIHRvIHJ1biBpbiB0d28gZ2VhciBzcGVlZHMpLiBCdXQgdGhhdAo+ID4gcmVxdWlyZXMgYW4g
YWdyZWVtZW50IGJldHdlZW4gdGhlIFVGUyBjb250cm9sbGVyIGFuZCB0aGUgVUZTIGRldmljZS4K
PiA+IFRoaXMgY29tbWl0IGZpbmRzIHRoZSBtYXggZ2VhciBzdXBwb3J0ZWQgYnkgYm90aCBjb250
cm9sbGVyIGFuZCBkZXZpY2UKPiA+IHRoZW4gZGVjaWRlcyB3aGljaCBvbmUgdG8gdXNlLgo+ID4g
Cj4gPiBVRlMgY29udHJvbGxlcidzIG1heCBnZWFyIGNhbiBiZSByZWFkIGZyb20gdGhlIFJFR19V
RlNfUEFSQU0wIHJlZ2lzdGVyIGFuZAo+ID4gVUZTIGRldmljZSdzIG1heCBnZWFyIGNhbiBiZSBy
ZWFkIGZyb20gdGhlICJtYXgtZ2VhciIgZGV2aWNldHJlZSBwcm9wZXJ0eS4KPiA+IAo+ID4gVGhl
IFVGUyBQSFkgYWxzbyBuZWVkcyB0byBiZSBjb25maWd1cmVkIHdpdGggdGhlIGRlY2lkZWQgZ2Vh
ciB1c2luZyB0aGUKPiA+IHBoeV9zZXRfbW9kZV9leHQoKSBBUEkuCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFy
by5vcmc+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy91ZnMvaG9zdC91ZnMtcWNvbS5jIHwgMzUgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0KPiA+ICAgZHJpdmVycy91ZnMvaG9zdC91
ZnMtcWNvbS5oIHwgIDQgKysrKwo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0
L3Vmcy1xY29tLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiA+IGluZGV4IGY5NTJj
Yzc2OTE5Zi4uMjY4NDYzZTkyZDY3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91
ZnMtcWNvbS5jCj4gPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmMKPiA+IEBAIC0y
ODEsNiArMjgxLDkgQEAgc3RhdGljIGludCB1ZnNfcWNvbV9ob3N0X3Jlc2V0KHN0cnVjdCB1ZnNf
aGJhICpoYmEpCj4gPiAgIHN0YXRpYyB1MzIgdWZzX3Fjb21fZ2V0X2hzX2dlYXIoc3RydWN0IHVm
c19oYmEgKmhiYSwgdTMyIGhzX2dlYXIpCj4gPiAgIHsKPiA+ICAgCXN0cnVjdCB1ZnNfcWNvbV9o
b3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiArCXN0cnVjdCBkZXZpY2Ug
KmRldiA9IGhiYS0+ZGV2Owo+ID4gKwl1MzIgbWF4X2dlYXIsIGhjZF9tYXhfZ2VhciwgcmVnOwo+
ID4gKwlpbnQgcmV0Owo+ID4gICAJaWYgKGhvc3QtPmh3X3Zlci5tYWpvciA9PSAweDEpIHsKPiA+
ICAgCQkvKgo+ID4gQEAgLTI5Miw4ICsyOTUsMzMgQEAgc3RhdGljIHUzMiB1ZnNfcWNvbV9nZXRf
aHNfZ2VhcihzdHJ1Y3QgdWZzX2hiYSAqaGJhLCB1MzIgaHNfZ2VhcikKPiA+ICAgCQkgKi8KPiA+
ICAgCQlpZiAoaHNfZ2VhciA+IFVGU19IU19HMikKPiA+ICAgCQkJcmV0dXJuIFVGU19IU19HMjsK
PiA+ICsJfSBlbHNlIGlmIChob3N0LT5od192ZXIubWFqb3IgPiAweDMpIHsKPiA+ICsJCS8qCj4g
PiArCQkgKiBTdGFydGluZyBmcm9tIFVGUyBjb250cm9sbGVyIHY0LCBRY29tIHN1cHBvcnRzIGR1
YWwgZ2VhciBtb2RlIChpLmUuLCB0aGUKPiA+ICsJCSAqIGNvbnRyb2xsZXIvUEhZIGNhbiBiZSBj
b25maWd1cmVkIHRvIHJ1biBpbiB0d28gZ2VhciBzcGVlZHMpLiBCdXQgdGhhdAo+ID4gKwkJICog
cmVxdWlyZXMgYW4gYWdyZWVtZW50IGJldHdlZW4gdGhlIFVGUyBjb250cm9sbGVyIGFuZCB0aGUg
ZGV2aWNlLiBCZWxvdwo+ID4gKwkJICogY29kZSB0cmllcyB0byBmaW5kIHRoZSBtYXggZ2VhciBv
ZiBib3RoIGFuZCBkZWNpZGVzIHdoaWNoIGdlYXIgdG8gdXNlLgo+ID4gKwkJICoKPiA+ICsJCSAq
IEZpcnN0IGdldCB0aGUgbWF4IGdlYXIgc3VwcG9ydGVkIGJ5IHRoZSBVRlMgZGV2aWNlIGlmIGF2
YWlsYWJsZS4KPiA+ICsJCSAqIElmIHRoZSBwcm9wZXJ0eSBpcyBub3QgZGVmaW5lZCBpbiBkZXZp
Y2V0cmVlLCB0aGVuIHVzZSB0aGUgZGVmYXVsdCBnZWFyLgo+ID4gKwkJICovCj4gPiArCQlyZXQg
PSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJtYXgtZ2VhciIsICZtYXhfZ2Vh
cik7Cj4gPiArCQlpZiAocmV0KQo+ID4gKwkJCWdvdG8gZXJyX291dDsKPiAKPiBDYW4gd2UgZGV0
ZWN0IHRoZSBVRlMgZGV2aWNlJ3MgbWF4IGdlYXIgc29tZWhvdz8gSWYgbm90LCB0aGUgJ21heC1n
ZWFyJwo+IHByb3BlcnR5IG5hbWUgZG9lc24ndCBzb3VuZCBnb29kLiBNYXliZSBjYWxsaW5nIGl0
ICdkZXZpY2UtZ2Vhcicgd291bGQgYmUKPiBiZXR0ZXIuCj4gCj4gPiArCj4gPiArCQkvKiBOZXh0
IGdldCB0aGUgbWF4IGdlYXIgc3VwcG9ydGVkIGJ5IHRoZSBVRlMgY29udHJvbGxlciAqLwo+ID4g
KwkJcmVnID0gdWZzaGNkX3JlYWRsKGhiYSwgUkVHX1VGU19QQVJBTTApOwo+ID4gKwkJaGNkX21h
eF9nZWFyID0gVUZTX1FDT01fTUFYX0dFQVIocmVnKTsKPiA+ICsKPiA+ICsJCS8qCj4gPiArCQkg
KiBOb3cgY29tcGFyZSBib3RoIHRoZSBnZWFycy4gSWYgdGhlIG1heCBnZWFyIHN1cHBvcnRlZCBi
eSB0aGUgVUZTIGRldmljZQo+ID4gKwkJICogaXMgY29tcGF0aWJsZSB3aXRoIFVGUyBjb250cm9s
bGVyLCB0aGVuIHVzZSB0aGUgVUZTIGRldmljZSdzIG1heCBnZWFyCj4gPiArCQkgKiBzcGVlZC4g
T3RoZXJ3aXNlLCB1c2UgdGhlIFVGUyBjb250cm9sbGVyIHN1cHBvcnRlZCBtYXggZ2VhciBzcGVl
ZC4KPiA+ICsJCSAqLwo+ID4gKwkJcmV0dXJuIChtYXhfZ2VhciA8PSBoY2RfbWF4X2dlYXIpID8g
bWF4X2dlYXIgOiBoY2RfbWF4X2dlYXI7Cj4gCj4gcmV0dXJuIG1heChtYXhfZ2VhciwgaGNkX21h
eF9nZWFyKTsgPwo+IAoKbWluKCkgc2hvdWxkIHdvcmsuLi4KClRoYW5rcywKTWFuaQoKPiA+ICAg
CX0KPiA+ICtlcnJfb3V0Ogo+ID4gICAJLyogRGVmYXVsdCBpcyBIUy1HMyAqLwo+ID4gICAJcmV0
dXJuIFVGU19IU19HMzsKPiA+ICAgfQo+ID4gQEAgLTMwMyw3ICszMzEsNyBAQCBzdGF0aWMgaW50
IHVmc19xY29tX3Bvd2VyX3VwX3NlcXVlbmNlKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gPiAgIAlz
dHJ1Y3QgdWZzX3Fjb21faG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4g
ICAJc3RydWN0IHBoeSAqcGh5ID0gaG9zdC0+Z2VuZXJpY19waHk7Cj4gPiAgIAlpbnQgcmV0Owo+
ID4gLQlib29sIGlzX3JhdGVfQiA9IFVGU19RQ09NX0xJTUlUX0hTX1JBVEUgPT0gUEFfSFNfTU9E
RV9COwo+ID4gKwl1MzIgaHNfZ2VhcjsKPiA+ICAgCS8qIFJlc2V0IFVGUyBIb3N0IENvbnRyb2xs
ZXIgYW5kIFBIWSAqLwo+ID4gICAJcmV0ID0gdWZzX3Fjb21faG9zdF9yZXNldChoYmEpOwo+ID4g
QEAgLTMxMSw4ICszMzksOSBAQCBzdGF0aWMgaW50IHVmc19xY29tX3Bvd2VyX3VwX3NlcXVlbmNl
KHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4gPiAgIAkJZGV2X3dhcm4oaGJhLT5kZXYsICIlczogaG9z
dCByZXNldCByZXR1cm5lZCAlZFxuIiwKPiA+ICAgCQkJCSAgX19mdW5jX18sIHJldCk7Cj4gPiAt
CWlmIChpc19yYXRlX0IpCj4gPiAtCQlwaHlfc2V0X21vZGUocGh5LCBQSFlfTU9ERV9VRlNfSFNf
Qik7Cj4gPiArCS8qIFVGU19IU19HMiBpcyB1c2VkIGhlcmUgc2luY2UgdGhhdCdzIHRoZSBsZWFz
dCBnZWFyIHN1cHBvcnRlZCBieSBsZWdhY3kgUWNvbSBwbGF0Zm9ybXMgKi8KPiA+ICsJaHNfZ2Vh
ciA9IHVmc19xY29tX2dldF9oc19nZWFyKGhiYSwgVUZTX0hTX0cyKTsKPiA+ICsJcGh5X3NldF9t
b2RlX2V4dChwaHksIFBIWV9NT0RFX1VGU19IU19CLCBoc19nZWFyKTsKPiA+ICAgCS8qIHBoeSBp
bml0aWFsaXphdGlvbiAtIGNhbGlicmF0ZSB0aGUgcGh5ICovCj4gPiAgIAlyZXQgPSBwaHlfaW5p
dChwaHkpOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaCBiL2Ry
aXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaAo+ID4gaW5kZXggMjE0ZWE1MGFjYWI5Li5jOTNiYzUy
ZWE4NDggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1xY29tLmgKPiA+ICsr
KyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLXFjb20uaAo+ID4gQEAgLTg5LDYgKzg5LDEwIEBAIGVu
dW0gewo+ID4gICAjZGVmaW5lIFRNUkxVVF9IV19DR0NfRU4JQklUKDYpCj4gPiAgICNkZWZpbmUg
T0NTQ19IV19DR0NfRU4JCUJJVCg3KQo+ID4gKy8qIGJpdCBkZWZpbml0aW9ucyBmb3IgUkVHX1VG
U19QQVJBTTAgKi8KPiA+ICsjZGVmaW5lIE1BWF9IU19HRUFSX01BU0sJR0VOTUFTSyg2LCA0KQo+
ID4gKyNkZWZpbmUgVUZTX1FDT01fTUFYX0dFQVIoeCkJRklFTERfR0VUKE1BWF9IU19HRUFSX01B
U0ssICh4KSkKPiA+ICsKPiA+ICAgLyogYml0IGRlZmluaXRpb24gZm9yIFVGU19VRlNfVEVTVF9C
VVNfQ1RSTF9uICovCj4gPiAgICNkZWZpbmUgVEVTVF9CVVNfU1VCX1NFTF9NQVNLCUdFTk1BU0so
NCwgMCkgIC8qIEFsbCBYWFhfU0VMIGZpZWxkcyBhcmUgNSBiaXRzIHdpZGUgKi8KPiAKPiAtLSAK
PiBXaXRoIGJlc3Qgd2lzaGVzCj4gRG1pdHJ5Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
