Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF8C6C44501
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 12:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkA+E7Rpue0enQfSw+enx32fkI+nf1JrhAbB5gUD4KQ=; b=sFSJ64uCadMF4/
	MtBkmVdjwnTJmwEA8pTSdcDtkh5EtMvX36z9FVCSC2p25/NZlffi7EwjtvSKnki3336XURwYuH0t2
	X4cr6iReMMkdrxvSOVdEfCy9UpJ5w6bpiiPjmd0kihRWqpg0B0nQ5aRIyJCaewdjROFY4pGa9r7dE
	rq4i4zTL6q1R2Mb5lNezxQuTVmi2mhKZCQBtV1xjqntCGoAgwkDu4kD8QJCL0y97lWOAIEqzZLT2w
	iEiNKiq6pCHs7kiApSnnvq31wq4GP9GqbKSmwrwSJYEWimC4EzSkJ8qfnKsBrNAAgelq3s/RdwbYY
	qu/uwdVG/50Ezl79kWSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLBh-0000000HFUM-10zr;
	Thu, 16 Jul 2026 12:27:37 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLBe-0000000HFT9-0x2D
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 12:27:35 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-475417f010dso3338995f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 05:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784204852; cv=none;
        d=google.com; s=arc-20260327;
        b=Vq4why73K3deUSRdBeBlKkuYIu3bl9fI/mVfkMghAzp+/pEH3NLNExt2lnlAzXmUw4
         DoQ4e64n7z2PvYYEM5TVdbfmXW/inu1k3niNm+4C587EqWYoQkaZYXkMmxWPzNtIP9N+
         D1rE2J0tWqDAWQ1Yf/QSEC0pE+Lcc+adm/BFK+gTDJwcOlfJfRMZ5hhCDCDuw6N5OFlQ
         RXkF3HwAdctlRIz2Ji8RO/Li7OW02VtTVMW3S+XS9mhLa6JCDAxB7k0oyOxZzIWROI1K
         abDWxIh8nQVk9M2U7p2Th3G8rNQITu7PshzDS8v1K2XPZ6+z8T2D4MDUV3Ua7vv/BePo
         SLYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        fh=lEobMbxn83uJRwEZ7dYe8rsI4WnOOIZdzJ+cRGQgHLo=;
        b=qtP2hnhtyNssckc5jhZ9XIOM/oSYwMh9BFi/yjxxLYoe482u+cRBn/8ApLLGSZgpwp
         SP72LXV7qf/Bb/quQGMmb7inY/1SMhFvN4lVQOv+TUYJz0g/PInJq1SmIX6+ujBF/gof
         Jt9KxLJJLHpA7eGQlEx0MAWH98ohPBNC9CtMbY4fA+3+t1QDpAy5ApUVUKJ9mflJRS0J
         2GAOw1OVEJoFw25268oy7mUWFKHCcywz7KuVSkk7yKMt7VBPAleKxVqlK1TyYPQ9qnxG
         yc+8HVarjQl2rk/0FzfRh737WpgW7QNzBBjEi5WFJdYOeb503T/7p/yQewqApo8IqvqF
         YpCQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784204852; x=1784809652; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        b=PAw7p8Pa49rVH1GG6UzkbrxlxJA3tuAmvYwzt7yjDHNWPYsrzuNXyN6/N1oUoXLx+D
         NizVJXxPs6ncWe8zEMDSB9IeQaWOZF+wy9es98wikygZ4e3Lwd2PNWQNgZUUbxAcGrx1
         AXr8K3pOunHlLY+hMY0zpcAwXWEtOXEx9UcaMHSxvuOkWTak/J/8sK5JdltJ/ipQWo97
         kpJY0Qm2Kp9AxuO6Ay5OasoXwjsCbS2uFVGMH8graxC5Lo1d57XhN2SL3e4m3wnUUQx4
         xweCfFl+GxwvdU5rsm7aa4ijmG0AZ/N7Y/2E3LMR7CMj89oXCtOghRJYWN4rBz6eHP6j
         12oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784204852; x=1784809652;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=85KSTws32WPyRCiZC1/0LybeFCEGGOzS0CRvJprKyoI=;
        b=VH45/SAvrA1A6Yk9MofdwCUE4QZEjkioy4rgtAwCpaa9gid9N+02tU++MPIliekjc3
         0c4dzcIoSoOPwLKLoGpUVFGZjfKYpjg7JpBnS57j6f5EAKuhAClfJuVbmhyqo7PJTLxz
         FlYhDlHWy+ZAsft5d4GVSQgn5d6QorAGb4L5abT8rk+lC2N8pRFl1EZ+TaqcQ1mGOaCf
         VgipY2XC4dTtm9CBEZo4fwlCekn+UVTlsemgfx2/2LKbJJsrs/bRzEqc7KgtehsXjin9
         tASh9E3D9Z8GdHps3HMOTeaIMx/Pi0sA9UGhZjywfCF+wqk1zl5OPvTD0hWZye2HXyG3
         n0uQ==
X-Forwarded-Encrypted: i=1; AHgh+RqdfK9MZAJtDrxBKlHctg1tuI4s3vCDpyqM1T8FA0O07vOu48TxAAfUo3KlsQNS7JUPKD3Ym2dyiN0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yww1H4UelvjmCH1ptF0ZLicVaZkwA4R+K3mdLsJpA59SQQSPD4B
	OzWq5fUpZ8LmBymPUbAayhpsS997SVui50jxFx3iQbXjKXH2Qh+yh5QP0xwKIyhTDS+MY3X3/Tr
	PY1GMkqG/Sjx7qOpgIh2dqEM4EXzE8s4=
X-Gm-Gg: AfdE7cnl/yTzsz2jaAWkpZFbGuf7wS4kHSGPxFq49QQBnJVgTLhy1jJzkRiV8AKI5Ov
	E47xewPZb47bMp59ljqa32SynAB4AcmhGYYCY/TwpeNEr0TUkpPwg45Tb7+b91QdlVGNNbtKXVb
	GovkZamk5mxdFwQpfokDZ8bs9h+1g/BQpGC4vGDt0b7qjbyzaMMI6XU4AKEdLC2OaWvl31o+RrH
	8z1Q4QbSazxkPeko6TNn+4L0wLLxVQOhwwjQ5B6yPsuEJaqUsX8qdVAhskTFQ==
X-Received: by 2002:a05:6000:2911:b0:47f:2baf:5e2b with SMTP id
 ffacd0b85a97d-47f4fc99a4fmr8133433f8f.1.1784204852159; Thu, 16 Jul 2026
 05:27:32 -0700 (PDT)
MIME-Version: 1.0
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com> <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
In-Reply-To: <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
From: Andy Yan <andyshrk@gmail.com>
Date: Thu, 16 Jul 2026 20:27:19 +0800
X-Gm-Features: AUfX_mzgo6LqHodBqk8XKfq4lJF2iVLX6VlVzaraq-ul6MEoybhP2jiUNkg_Mig
Message-ID: <CANbgqAR=ECWEHv2X85nOASmm=r91ipO=r=8ufrrXFYLxxKCaFg@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
	Simon Wright <simon@symple.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_052734_320648_59FE1351 
X-CRM114-Status: GOOD (  18.30  )
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

SGVsbG/vvIwKQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbT4g5LqOMjAyNuW5tDbmnIgxMuaXpeWRqOS6lCAwNzo0NeWGmemBk++8mgo+Cj4gVGhlIFBI
WSBQTEwgY2FuIGJlIHByb2dyYW1tZWQgYnkgYW4gZXh0ZXJuYWwgY29tcG9uZW50LCBlLmcuIHRo
ZQo+IGJvb3Rsb2FkZXIsIGp1c3QgYmVmb3JlIHRoZSByZWNhbGNfcmF0ZSgpIGNhbGxiYWNrIGlz
IGludm9rZWQgZHVyaW5nCj4gZGV2bV9jbGtfaHdfcmVnaXN0ZXIoKSBpbiB0aGUgcHJvYmUgcGF0
aC4KPgo+IFRoZXJlZm9yZSBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKCkgZmluZHMgdGhl
IFBMTCBlbmFibGVkIGFuZAo+IGF0dGVtcHRzIHRvIGNvbXB1dGUgdGhlIGNsb2NrIHJhdGUsIHdo
aWxlIG1ha2luZyB1c2Ugb2YgdGhlIGJwYyB2YWx1ZQo+IGZyb20gdGhlIEhETUkgUEhZIGNvbmZp
Z3VyYXRpb24sIHdoaWNoIGFsd2F5cyBkZWZhdWx0cyB0byA4IGJlY2F1c2UKPiBwaHlfY29uZmln
dXJlKCkgd2FzIG5vdCBydW4gYXQgdGhhdCBwb2ludC4gIEFzIGEgY29uc2VxdWVuY2UsIHRoZQo+
IChyZSljYWxjdWxhdGVkIHJhdGUgaXMgaW5jb3JyZWN0IHdoZW4gdGhlIGFjdHVhbCBicGMgd2Fz
IGhpZ2hlciB0aGFuIDguCj4KPiBEbyBub3QgcmVseSBvbiBhbnkgb2YgdGhlIGhkbWlfY2ZnIG1l
bWJlcnMgd2hlbiBjb21wdXRpbmcgdGhlIGNsb2NrIHJhdGUKPiBhbmQsIGluc3RlYWQsIHJlYWQg
dGhlIHJlcXVpcmVkIGlucHV0IGRhdGEgKGkuZS4gYnBjKSwgZGlyZWN0bHkgZnJvbSB0aGUKPiBo
YXJkd2FyZSByZWdpc3RlcnMuCj4KPiBGaXhlczogMzQ4MWZjMDRkOTY5ICgicGh5OiByb2NrY2hp
cDogc2Ftc3VuZy1oZHB0eDogQ29tcHV0ZSBjbGsgcmF0ZSBmcm9tIFBMTCBjb25maWciKQo+IFRl
c3RlZC1ieTogVGhvbWFzIE5pZWRlcnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgo+IFRlc3RlZC1i
eTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3Rp
YW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KCiAgIFJldmll
d2VkLWJ577yaQW5keSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNvbT4KClRoYW5rcwo+IC0tLQo+ICBk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTMgKysr
Ky0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1z
YW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3Vu
Zy1oZHB0eC5jCj4gaW5kZXggMmQ5NzNiYzM3ZjA3Li43MTA2MDNhZmZmODYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiBA
QCAtMjE2OCw3ICsyMTY4LDcgQEAgc3RhdGljIHU2NCBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0
ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRwdHgpCj4gICAgICAgICBzdHJ1
Y3QgbGNwbGxfY29uZmlnIGxjcGxsX2h3Owo+ICAgICAgICAgc3RydWN0IHJvcGxsX2NvbmZpZyBy
b3BsbF9odzsKPiAgICAgICAgIHU2NCBmb3V0LCBzZG07Cj4gLSAgICAgICB1MzIgbW9kZSwgdmFs
Owo+ICsgICAgICAgdTMyIG1vZGUsIGJwYywgdmFsOwo+ICAgICAgICAgaW50IHJldCwgaTsKPgo+
ICAgICAgICAgcmV0ID0gcmVnbWFwX3JlYWQoaGRwdHgtPnJlZ21hcCwgQ01OX1JFRygwMDA4KSwg
Jm1vZGUpOwo+IEBAIC0yMjY2LDYgKzIyNjYsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9j
bGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKPiAg
ICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICAgICAgICAgcm9w
bGxfaHcucG1zX3NkaXYgPSAoKHZhbCAmIFBMTF9QQ0dfUE9TVERJVl9TRUxfTUFTSykgPj4gNCkg
KyAxOwo+ICsgICAgICAgYnBjID0gKEZJRUxEX0dFVChQTExfUENHX0NMS19TRUxfTUFTSywgdmFs
KSA8PCAxKSArIDg7Cj4KPiAgICAgICAgIGZvdXQgPSBQTExfUkVGX0NMSyAqIHJvcGxsX2h3LnBt
c19tZGl2Owo+ICAgICAgICAgaWYgKHJvcGxsX2h3LnNkbV9lbikgewo+IEBAIC0yMjgwLDcgKzIy
ODEsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2Nm
ZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKPiAgICAgICAgICAgICAgICAgICAgICAgICBm
b3V0ID0gZm91dCArIHNkbTsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgcmV0dXJuIGRpdl91NjQo
Zm91dCAqIDIsIHJvcGxsX2h3LnBtc19zZGl2ICogMTApOwo+ICsgICAgICAgcmV0dXJuIERJVl9S
T1VORF9DTE9TRVNUX1VMTChmb3V0ICogMiAqIDgsIHJvcGxsX2h3LnBtc19zZGl2ICogMTAgKiBi
cGMpOwo+ICB9Cj4KPiAgc3RhdGljIHVuc2lnbmVkIGxvbmcgcmtfaGRwdHhfcGh5X2Nsa19yZWNh
bGNfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywKPiBAQCAtMjI4OCwxOSArMjI4OSwxMyBAQCBzdGF0
aWMgdW5zaWduZWQgbG9uZyBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKHN0cnVjdCBjbGtf
aHcgKmh3LAo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCA9IHRvX3Jr
X2hkcHR4X3BoeShodyk7Cj4gICAgICAgICB1MzIgc3RhdHVzOwo+IC0gICAgICAgdTY0IHJhdGU7
Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4gICAgICAgICByZXQgPSByZWdtYXBfcmVhZChoZHB0eC0+
Z3JmLCBHUkZfSERQVFhfQ09OMCwgJnN0YXR1cyk7Cj4gICAgICAgICBpZiAocmV0IHx8ICEoc3Rh
dHVzICYgSERQVFhfSV9QTExfRU4pKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPgo+IC0g
ICAgICAgcmF0ZSA9IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhoZHB0
eCk7Cj4gLQo+IC0gICAgICAgaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01P
REVfRlJMKQo+IC0gICAgICAgICAgICAgICByZXR1cm4gcmF0ZTsKPiAtCj4gLSAgICAgICByZXR1
cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHJhdGUgKiA4LCBoZHB0eC0+aGRtaV9jZmcuYnBjKTsK
PiArICAgICAgIHJldHVybiBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmco
aGRwdHgpOwo+ICB9Cj4KPiAgc3RhdGljIGludCBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9y
YXRlKHN0cnVjdCBjbGtfaHcgKmh3LAo+Cj4gLS0KPiAyLjU0LjAKPgo+CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
