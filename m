Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E210ECD981
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 15:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jujt16kKDXg5P1Qv3Aw+nqXES6RLortneZYKVn+R/ZY=; b=KwHFAVr1BwtqSZ
	RKlQhj2buo8emQ9b3NHGw7202chjIGtTNGcnCa9Qe5V7oinkrWUiqkwfdSrsL79w0zLMx7Z8xpB/n
	A9jSq/gReO8Uj7cX9vEGGq2LkTQsJmObf3OxiYrfGLFDnFVoentZPl9Ncj7aZf65wnQJ+1YbY6AEc
	BxiP5eqtEx8OCdQRTA70QOVnV53e2IyQFT2a3Iu/B1N6WutB037Wq54Gxy2/lr22At1JhGLc//a2c
	wG5Fg2eDdWjbT95wzvldNmtDGMRzKai35Mit0yEx6Eg87aQaV6yvV3Qi3A5sqxdYJeWcE0u/y6nH1
	KeDC44TOi6XmcuWabanA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1a3-0000000AAFf-35is;
	Thu, 05 Feb 2026 15:47:43 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1Zz-0000000AADF-1ZuU
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 15:47:42 +0000
Message-ID: <89516358-7b13-43ad-b303-1731f61d72e7@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770306446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lcTjrwZnRUs6I9pb05yvCe0/2ynz4xeAqxjhsg9PbTA=;
	b=UTOeXiptGYn1ElFY5mxb7dWkCFuSyO2HKHmDBQKd7HpV4fhN5sVrCBUDUEqz7PTZcEyETF
	tmA/rGRsphpF59I8fqd5xqe8VBy4i2VSmCDBEYNyOy0AurXOIYFlNcg/D7w0Xn5KnuGZe2
	r8zPdD9Nw/t/9p5tEJ1Oi834cE8kLWk=
Date: Thu, 5 Feb 2026 10:47:21 -0500
MIME-Version: 1.0
Subject: Re: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
To: "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vinod Koul <vkoul@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Simek, Michal" <michal.simek@amd.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
 <20260203002128.935842-2-sean.anderson@linux.dev>
 <MN0PR12MB59537BC8B60D76CCE0B1391CB798A@MN0PR12MB5953.namprd12.prod.outlook.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <MN0PR12MB59537BC8B60D76CCE0B1391CB798A@MN0PR12MB5953.namprd12.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_074740_905170_5360C0C5 
X-CRM114-Status: GOOD (  10.54  )
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

T24gMi80LzI2IDAzOjMyLCBQYW5kZXksIFJhZGhleSBTaHlhbSB3cm90ZToKPiBbQU1EIE9mZmlj
aWFsIFVzZSBPbmx5IC0gQU1EIEludGVybmFsIERpc3RyaWJ1dGlvbiBPbmx5XQo+IAo+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBTZWFuIEFuZGVyc29uIDxzZWFuLmFuZGVy
c29uQGxpbnV4LmRldj4KPj4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgMywgMjAyNiA1OjUxIEFN
Cj4+IFRvOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5j
b20+OyBWaW5vZCBLb3VsCj4+IDx2a291bEBrZXJuZWwub3JnPjsgbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPj4gQ2M6IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dpbGN6eW5za2lAa2Vy
bmVsLm9yZz47IExvcmVuem8gUGllcmFsaXNpCj4+IDxscGllcmFsaXNpQGtlcm5lbC5vcmc+OyBQ
YW5kZXksIFJhZGhleSBTaHlhbQo+PiA8cmFkaGV5LnNoeWFtLnBhbmRleUBhbWQuY29tPjsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgU2ltZWssIE1pY2hhbAo+PiA8bWljaGFsLnNpbWVr
QGFtZC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQo+
PiBwY2lAdmdlci5rZXJuZWwub3JnOyBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGlu
YXJvLm9yZz47IFJvYiBIZXJyaW5nCj4+IDxyb2JoQGtlcm5lbC5vcmc+OyBIYXZhbGlnZSwgVGhp
cHBlc3dhbXkgPHRoaXBwZXN3YW15LmhhdmFsaWdlQGFtZC5jb20+Owo+PiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz47IEJqb3JuIEhlbGdhYXMKPj4gPGJoZWxnYWFzQGdv
b2dsZS5jb20+OyBTZWFuIEFuZGVyc29uIDxzZWFuLmFuZGVyc29uQGxpbnV4LmRldj47IENvbm9y
Cj4+IERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz47IEtyenlzenRvZiBLb3psb3dza2kgPGty
emsrZHRAa2VybmVsLm9yZz47Cj4+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCj4+IFN1Ympl
Y3Q6IFtQQVRDSCAxLzhdIGR0LWJpbmRpbmdzOiBwY2k6IHhpbGlueC1ud2w6IEFkZCByZXNldHMK
Pj4KPj4gQWRkIHJlc2V0cyBzbyB3ZSBjYW4gaG9sZCB0aGUgYnJpZGdlIGluIHJlc2V0IHdoaWxl
IHdlIHBlcmZvcm0gcGh5IGNhbGlicmF0aW9uLgo+IAo+IFNlZW1zIGxpa2UgdGhpcyBzaG91bGQg
YSByZXF1aXJlZCBwcm9wZXJ0eT8KCkl0J3Mgb3B0aW9uYWwgYXMgaXQgZG9lcyBub3QgZXhpc3Qg
aW4gcHJldmlvdXMgdmVyc2lvbnMgb2YgdGhlCmRldmljZXRyZWUuIEluIHRoZSBwYXN0IEkgaGF2
ZSByZWNlaXZlZCBwdXNoYmFjayBhZ2FpbnN0IG1ha2luZyB0aGVzZQpzb3J0IG9mIHByb3BlcnRp
ZXMgcmVxdWlyZWQuCgpJZiB0aGUgcmVzZXRzIGRvbid0IGV4aXN0IHdlIGp1c3QgZG9uJ3QgYXNz
ZXJ0IHRoZW0gYW5kIGFzc3VtZSB0aGUKYm9vdGxvYWRlciBoYXMgZGVhc3NlcnRlZCB0aGVtLgoK
LS1TZWFuCgo+IFJlc3QgbG9va3MgZmluZSB0byBtZS4KPiAKPj4KPj4gU2lnbmVkLW9mZi1ieTog
U2VhbiBBbmRlcnNvbiA8c2Vhbi5hbmRlcnNvbkBsaW51eC5kZXY+Cj4+IC0tLQo+Pgo+PiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3hsbngsbndsLXBjaWUueWFtbCAgfCAxNyArKysrKysr
KysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kveGxueCxud2wt
cGNpZS55YW1sCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS94bG54
LG53bC1wY2llLnlhbWwKPj4gaW5kZXggOWRlM2MwOWVmYjZlLi43ZWZiM2RkOTk1NWYgMTAwNjQ0
Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kveGxueCxud2wt
cGNpZS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kv
eGxueCxud2wtcGNpZS55YW1sCj4+IEBAIC02OSw2ICs2OSwxOCBAQCBwcm9wZXJ0aWVzOgo+PiAg
ICBwb3dlci1kb21haW5zOgo+PiAgICAgIG1heEl0ZW1zOiAxCj4+Cj4+ICsgIHJlc2V0czoKPj4g
KyAgICBtYXhJdGVtczogMwo+PiArCj4+ICsgIHJlc2V0LW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+
PiArICAgICAgLSBkZXNjcmlwdGlvbjogQVBCIHJlZ2lzdGVyIGJsb2NrIHJlc2V0Cj4+ICsgICAg
ICAgIGNvbnN0OiBjZmcKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFYSS1QQ0llIGJyaWRnZSBy
ZXNldAo+PiArICAgICAgICBjb25zdDogYnJpZGdlCj4+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQ
Q0llIE1BQyByZXNldAo+PiArICAgICAgICBjb25zdDogY3RybAo+PiArCj4+ICAgIGlvbW11czoK
Pj4gICAgICBtYXhJdGVtczogMQo+Pgo+PiBAQCAtMTE3LDYgKzEyOSw3IEBAIGV4YW1wbGVzOgo+
PiAgICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4K
Pj4gICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3BoeS5oPgo+PiAgICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9wb3dlci94bG54LXp5bnFtcC1wb3dlci5oPgo+PiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9yZXNldC94bG54LXp5bnFtcC1yZXNldHMuaD4KPj4gICAgICBzb2Mgewo+
PiAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4gICAgICAgICAgI3NpemUtY2VsbHMg
PSA8Mj47Cj4+IEBAIC0xNDYsNiArMTU5LDEwIEBAIGV4YW1wbGVzOgo+PiAgICAgICAgICAgICAg
bXNpLXBhcmVudCA9IDwmbndsX3BjaWU+Owo+PiAgICAgICAgICAgICAgcGh5cyA9IDwmcHNndHIg
MCBQSFlfVFlQRV9QQ0lFIDAgMD47Cj4+ICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZ6
eW5xbXBfZmlybXdhcmUgUERfUENJRT47Cj4+ICsgICAgICAgICAgICByZXNldHMgPSA8Jnp5bnFt
cF9yZXNldCBaWU5RTVBfUkVTRVRfUENJRV9DRkc+LAo+PiArICAgICAgICAgICAgICAgICAgICAg
PCZ6eW5xbXBfcmVzZXQgWllOUU1QX1JFU0VUX1BDSUVfQlJJREdFPiwKPj4gKyAgICAgICAgICAg
ICAgICAgICAgIDwmenlucW1wX3Jlc2V0IFpZTlFNUF9SRVNFVF9QQ0lFX0NUUkw+Owo+PiArICAg
ICAgICAgICAgcmVzZXQtbmFtZXMgPSAiY2ZnIiwgImJyaWRnZSIsICJjdHJsIjsKPj4gICAgICAg
ICAgICAgIGlvbW11cyA9IDwmc21tdSAweDRkMD47Cj4+ICAgICAgICAgICAgICBwY2llX2ludGM6
IGxlZ2FjeS1pbnRlcnJ1cHQtY29udHJvbGxlciB7Cj4+ICAgICAgICAgICAgICAgICAgaW50ZXJy
dXB0LWNvbnRyb2xsZXI7Cj4+IC0tCj4+IDIuMzUuMS4xMzIwLmdjNDUyNjk1Mzg3LmRpcnR5Cj4g
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
