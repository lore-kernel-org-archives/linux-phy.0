Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 380A010BA432
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 07:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPcvrE4zhxQ+yn/z7tlmTPLk00MfliNPkCWZooBevnw=; b=gzj0qH+87FlWBl
	V9Et+65knU6G+TbZQ42l57OTjOwyUvWCC/Alepi2DI1XBjCxoBfI4UvdPmEZ66tQrXAepD6j0OZak
	4jZGW/jQMrv51J42Uc8FlSgcWqlvXXVuTnC2B8PXONQh0IYph/5eZb4bwXzUY9PFSdZmY8l4QL/o4
	0egSMfma9zBrtleq7jNFbKVZQFy+MNWJy/MGyOElSRWV9M7KxgrjE2nH6VdWf07kfw4YpQ0aZNdci
	F6yIn4C34S/crWyjctdZc5Q1Dg7cnBj5+1N4MUHE8GVyp/9zw7dErsiZV7iow3wRM4d++pzE8XkdT
	FPz7ABIbrMiKKXkeFRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w621v-00000006umR-1fpI;
	Fri, 27 Mar 2026 07:54:55 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w621s-00000006um3-1DK1
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 07:54:53 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-38be12cee51so1330541fa.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 00:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774598089; x=1775202889; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZwNU0jlR/sjw8L47J81Q9QJvOfehg7npczIpclyPeM8=;
        b=hLCT5kQYeqkFp93lM+Uo9hw0bCh5WC8T1ouhZbuWvMbGg4YqP5wmYsZUDcye2EBRPt
         hOpDQfbu4GTyqqqfaQ8h7KChP9r5PrM6RAztOlBsk9YzKoH439n7wBstAcFSckc6TWkF
         m81YR1tY5mgHiAMfMIfAcg9EaGtA2jDkP4LuDjnypSz11MiYMuhOqP8uAxU3Iey8M2ag
         NBL6v7ItM7eJbylBAfiJWFC1pToa5lGIuVaLvCwjFkMT0B9qcec4XeI1xXpZ/Az4H/8i
         okUMr1LOZDoIIN8RokJdTSY+l/OnPCipSHgQbqkEfs6Xlm9w3gpb1CvydXMrV/yqs1We
         BvKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774598089; x=1775202889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZwNU0jlR/sjw8L47J81Q9QJvOfehg7npczIpclyPeM8=;
        b=WdgJLXTBlomK9wHK7+zXxL6DcMjtGuIqiWW7DxIz6ZMFkbQhAKUPAkWi3E71kPqOif
         oB8RgDce9vuVH8R1AkN/AxBRBX0ymw4sxhszvVzR2OgJ8B91RatpM/WdaYfJy7Gk7G0H
         fXGoeQq1QKpyslZcBRkr8V+VnlvsJgJYYCtadeOBd7CKc+8+rw+1hT2hQtPvSvbpy8jn
         XDNtRHaUb7MKHplzQ8cPTBj7QqeUX7BsX5uzoC4xwYNpeTA7Epww+1zbVmLoqAlXYrhI
         RbhDElo33KyRPJNZX6mmXpyDhG5yABPYgZ+7PDA11eBegwkrGDBjKRew7iDOkW72AWSa
         AXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6i0Owt8EH1GckT7w6N6wijtgtdvqkRlF+tsElr5lmEoH8F+fiWze1ZvKpaioh7xSWhAEsVWyZRzQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7b7MGQP+43d5k5oKYFAu7M4fv4PPhihu9ww9Vdylv1fShU+Px
	XXGL4Yt1SjKzVjErVjCflas/wTkIWOD0kHCFBzn79WGfHe8A7N9Q4h3jVDbEJaYfvbQ=
X-Gm-Gg: ATEYQzzqirSgIJqkCNL5oRc1F1mwlOjvs8A1qeJM54WlXdMruvkePwIeuJgG8olbb4a
	zSntY7s4tMX/VSlN231jlDlBLhcqC9mEA99KJ8Ut2DYez/oeLT3amE39PlWOfyWv5vfugcXzhUj
	IPYjkkWm9oJIFA64c5Pmz5ybICCqjqJZPQQLeABbaTLwL/WyBSdO0ZXYC8MWar0zesD5pEXe5xS
	vZ/E1ogFJqxNDoLFISO6L/iQw5nEXz7X4lGO0bmx77xJGLmlqkz+vRFs3Fhyz7p8Wr5PL8R1OzJ
	+tS/M7FESzE3YOO6azMe7UQz8Wq1MY0jmRq7qzcbzyCKBqeXxYBPUs4i4+0QU9Soi4PL/7q1BUK
	eIxocEwFeHr44hHAXnn4DOmizcwXf3tNvSdvY7v7aahncZzdcBIopwt7g9iQuUuA1Ya1+ja9dLn
	q6Ue0k/+Z1MdmRu4lYG9losUk94GmrY/SoOa24/KxFaqzBsYLCb0yigvoYgtSflW3bn3H2XMzBr
	xv8ng==
X-Received: by 2002:a2e:a889:0:b0:389:fd1a:4419 with SMTP id 38308e7fff4ca-38c74072654mr2395881fa.7.1774598089075;
        Fri, 27 Mar 2026 00:54:49 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c52f86970sm10376001fa.6.2026.03.27.00.54.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 00:54:48 -0700 (PDT)
Message-ID: <e37ce438-12c7-462d-b2bc-1351be62b806@linaro.org>
Date: Fri, 27 Mar 2026 09:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <99287afe-90cb-44d5-91db-14c6b0f729fd@linaro.org>
 <fedd369d-a0fc-4dbd-9862-3b6e3a403764@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <fedd369d-a0fc-4dbd-9862-3b6e3a403764@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_005452_372156_34163C62 
X-CRM114-Status: GOOD (  27.75  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMy8yNy8yNiAwMzowMywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAyNi8wMy8yMDI2
IDE0OjQ5LCBWbGFkaW1pciBaYXBvbHNraXkgd3JvdGU6Cj4+IEhlcmUgdGhlIGRlc2NyaXB0aW9u
IG9mIGhhcmR3YXJlIGlzIGRvbmUsIGFuZCBteSBwb2ludCBpcyB0aGF0IHRoZSBuZXcKPj4gUEhZ
X1FDT01fQ1NJMl9NT0RFX1NQTElUX0RQSFkgcGh5IHR5cGUgaXMgc2ltcGx5IG5vdCBuZWVkZWQs
IHNpbmNlIGl0J3MKPj4gcG9zc2libGUgdG8gZ2l2ZSBhIHByb3BlciBkZXNjcmlwdGlvbiBvZiBo
YXJkd2FyZSB3aXRob3V0IHRoaXMgaW52ZW50aW9uLgo+IAo+IFBlcmhhcHMgSSdtIG5vdCB1bmRl
cnN0YW5kaW5nIHlvdS4KCllvdSBhcmUgd2VsY29tZSB0byBhc2sgcXVlc3Rpb25zLCBpdCBtYXkg
c2F2ZSB0aW1lLgoKPiBJZiB3ZSB1c2UgUEhZX1RZUEVfRFBIWQo+IAo+IGluY2x1ZGUvZHQtYmlu
ZGluZ3MvcGh5L3BoeS5oOiNkZWZpbmUgUEhZX1RZUEVfRFBIWQkJMTAKPiAKPiBXZSBfbXVzdF8g
dGhlbiBhZGQgU1BMSVRfTU9ERSB0byBwaHkuaCBpZi93aGVuIHdlIGltcGxlbWVudCB0aGF0Cj4g
c3VwcG9ydC4KCkkgZG9uJ3QgdGhpbmsgaXQgaXMgdGhlIG11c3QuCgo+IFdoaWNoIG1lYW5zIHN1
Y2Nlc3NmdWxseSBhcmd1aW5nIHRoZSB0b3NzIG9mIHdlYXRoZXIgU1BMSVRfTU9ERQo+IGlzIGEg
UXVhbGNvbW1pc20gLSBhIHZlbmRvciBzcGVjaWZpYyBtb2RlIG9yIG5vdC4KPiAKPiA8JnBoeSBQ
SFlfVFlQRV9EUEhZPiBjb21taXR0ZWQgdG8gYW4gdXBzdHJlYW0gZHRzIHdpbGwgdGhlbiBuZWVk
IHRvIGJlCj4gc3VwcG9ydGVkIHBlcnBldHVhbGx5Lgo+IAoKRmlyc3Qgb2YgYWxsLCBub2JvZHkg
c2F5cy9kZWZpbmVzIHRoYXQgdGhlIHBoeSB0eXBlIGlzIG1hbmRhdG9yeSB0byBiZQpwcmVzZW50
IGluIHRoZSBjZWxsIGF0IGFsbCwgZm9yIGluc3RhbmNlIGl0IGNvdWxkIGJlIHByb3ZpZGVkIG92
ZXIgYnVzLXR5cGUKcHJvcGVydHkgb2YgbWVkaWEgZW5kcG9pbnRzLCBhbmQgYSBjb25uZWN0ZWQg
c2Vuc29yIHVuYXZvaWRhYmx5IHBvc3R1bGF0ZXMKdGhlIHZhbHVlIG9mIHRoaXMgcHJvcGVydHku
Cgo+IFNvIGZvciBleGFtcGxlIHFyYjU2MTUgLSBrb25hL3JiNSBzdXBwb3J0IHNwbGl0IG1vZGUu
Cj4gCj4gUHJldGVuZCBnbyB3aXRoIDwmcGh5IFBIWV9UWVBFX0RQSFk+OyBhbmQgcmV0cm9maXQg
aW5kaXZpZHVhbCBQSFkKPiBzdXBwb3J0IHRvIHRoaXMgcGxhdGZvcm0uCj4gCj4gR3JhbmQgc28g
ZmFyLgo+IAo+IFRoZSBwcmV0ZW5kIHdlIHdhbnQgdG8gc3dpdGNoIGZyb20gb25lIHNlbnNvciB0
byBhIHNwbGl0LW1vZGUgc2Vuc29yIG9uCj4gdGhlIGV4aXN0aW5nIG1lenphbmluZS4KCllvdSBt
YXkgdGhpbmsgaG93IGl0IHNob3VsZCBiZSBkb25lLCBpdCdzIGJlZW4gYXNrZWQgZm9yIGEgd2hp
bGUgdG8gcHJvdmlkZQphIGNvbXBsZXRlIHZhbGlkIGV4YW1wbGUsIGl0IG1heSBoZWxwIHlvdSB0
byBnZXQgYSBiZXR0ZXIgdW5kZXJzdGFuZGluZyBvZgp0aGUgd2hvbGUgcGljdHVyZS4KCj4gCj4g
VGhlbiB3ZSBuZWVkIGEgcmVwcmVzZW50YXRpb24gb2Ygc3BsaXQgbW9kZSBpbiBwaHkuaCB0byBy
ZXByZXNlbnQgdGhhdAo+IGluIERULgoKU29tZSBraW5kIG9mIHNwbGl0IG1vZGUgcmVwcmVzZW50
YXRpb24gc2hvdWxkIGJlIGluIERULCBpdCBkb2VzIG5vdAptZWFuIHRoYXQgaXQgc3RpY2tzIHRv
IHBoeS5oIG9yIHdoYXRldmVyIGVsc2UuIExhbmVzIChhbmQgYnVzLXR5cGUpIGFyZQpkZXNjcmli
ZWQgdW5kZXIgZW5kcG9pbnQgZGV2aWNlIHRyZWUgbm9kZXMsIHRoaXMgaXMgdG90YWxseSBzdWZm
aWNpZW50CnRvIHNlcGFyYXRlIHdoYXQgeW91IGNhbGwgImEgc3BsaXQgbW9kZSIuIFNvLCBpdCBl
eGNsdWRlcyBwaHkuaC4KCj4gCj4gPCZwaHkgUEhZX1RZUEVfRFBIWV9TUExJVF9NT0RFPjsKPiAK
PiBFeGNlcHQgc3BsaXQtbW9kZSBpcyBub3QgYW4gYXBwcm9wcmlhdGUgbW9kZSB0byBkZWZpbmUg
aW4gcGh5Lmggc2luY2UgaXQKPiBpcyB2ZW5kb3Igc3BlY2lmaWMgLSBldmVuIGlmIGEgZmV3IHZl
bmRvcnMgc3VwcG9ydCBpdCwgaXRzIG5vdCBhIGdlbmVyaWMKPiBQSFkgbW9kZS4KPiAKPiBIZW5j
ZSB3ZSB3b3VsZCBoYXZlIGFuIGVub3Jtb3VzbHkgZGlmZmljdWx0IHRpbWUganVzdGlmeWluZyBh
ZGRpbmcgdGhhdAo+IG1vZGUgdG8gcGh5LmggYW5kIHJpZ2h0bHkgc28uCgpXZSBzdGlsbCBkaXNj
dXNzIGEgaGFyZHdhcmUgZGVzY3JpcHRpb24sIGl0IHNob3VsZCBub3QgYmUgcHJvYmxlbWF0aWMg
dG8KcHJvdmlkZSBkZXNjcmlwdGlvbnMgb2YgcmVndWxhciBEUEhZIGFuZCB3aGF0IHlvdSBjYWxs
ICdzcGxpdCBtb2RlJyBEUEhZCndpdGhvdXQgYW55IG5ldyBleHRlbnRpb25zIG9mIHRoZSBleGlz
dGluZyBkdCBiaW5kaW5ncy4KCj4+PiBodHRwczovL3Jldmlldy5saW5lYWdlb3Mub3JnL2MvTGlu
ZWFnZU9TLwo+Pj4gYW5kcm9pZF9rZXJuZWxfbW90b3JvbGFfc202Mzc1LysvNDIzOTYwLzEvZHJp
dmVycy9jYW1fc2Vuc29yX21vZHVsZS8KPj4+IGNhbV9jc2lwaHkvY2FtX2NzaXBoeV9jb3JlLmMj
YjI4NQo+Pj4KPj4+IFRoZXJlIGlzIGRpc2p1bmN0aW9uIGFsbCBvdmVyIHRoaXMgZmlsZSBkZXBl
bmRpbmcgb24gdGhlIG1vZGUuCj4+Pgo+Pj4gaHR0cHM6Ly9yZXZpZXcubGluZWFnZW9zLm9yZy9j
L0xpbmVhZ2VPUy8KPj4+IGFuZHJvaWRfa2VybmVsX21vdG9yb2xhX3NtNjM3NS8rLzQyMzk2MC8x
L2RyaXZlcnMvY2FtX3NlbnNvcl9tb2R1bGUvCj4+PiBjYW1fY3NpcGh5L2NhbV9jc2lwaHlfY29y
ZS5jI2I3NjcKPiAKPiAKPiBPVE9ICj4gCj4gLSBTUExJVF9NT0RFIHdpbGwgY2VydGFpbmx5IHJl
cXVpcmUgX2JvdGhfIHNlcGFyYXRlIGluaXQgc2VxdWVuY2VzCj4gICAgIGFuZCBzcGVjaWZpYyBs
b2dpY2FsIGRpc2p1bmN0aW9uIGZvciBhZGRpdGlvbmFsIGNvbmZpZ3VyYXRpb24gc3RlcHMKPiAg
ICAgbGFuZS1hc3NpZ25tZW50IGFuZCBtYXNraW5nLCBldGMuCj4gCj4gLSBUaGF0IHBoeS5oIGlz
bid0IHRoZSByaWdodCBsb2NhdGlvbiBmb3IgU1BMSVRfTU9ERSBhcyBpdHMgdmVuZG9yCj4gICAg
IHNwZWNpZmljLiBKdXN0IGxvb2sgYXQgdGhlIG1vZGVzIHdlIGhhdmUgZm9yIHRoZSBVU0IgUEhZ
cwo+ICAgICBzYW1lIGxvZ2ljID0+IGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS1xY29tLXFt
cC5oIHNhbWUKPiAgICAgcmFpc29uIGQnw6p0cmUKPiAKPiAtIEFuZCB0aGF0IHNwZWNpZnlpbmcg
UEhZX1RZUEVfRFBIWSBub3cgYmluZHMgdXMgaW50byBhbiBBQkkgdGhhdCB3ZQo+ICAgICBjYW5u
b3Qgc3Vic2VxdWVudGx5IGNoYW5nZSAtIGl0IHdpbGwgbm90IGJlIHBvc3NpYmxlIHRvIGludHJv
ZHVjZQo+ICAgICBpbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktcWNvbS1taXBpLWNzaTIuaCBs
YXRlciBvbiB3aXRoIG91ciBtb2RlCj4gCj4gU28gdGhlcmVmb3JlIGluY2x1ZGUvZHQtYmluZGlu
Z3MvcGh5L3BoeS1xY29tLW1pcGktY3NpMi5oICsgUEhZIG1vZGVzIGlzCj4gdGhlIGxvZ2ljYWwg
b3V0Y29tZS4KPiAKClVubmVjZXNzYXJ5IGV4dGVudGlvbiBvZiB0aGUgZHQgYmluZGluZ3MgQUJJ
IGlzIG5vdCBuZWVkZWQgdG8gY29tcGxldGUKdGhlIHRhc2suCgotLSAKQmVzdCB3aXNoZXMsClZs
YWRpbWlyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
