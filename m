Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4170910AB836
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 01:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEoKrCnnnwaZ/3gJpHLPo0V6ppfxFcaZhM9cnCw4roI=; b=AloMd559KVgFxy
	mkn7e8ILOu7mIoSgiWkuNX78iQdM3l7zOKtBBWjpuirVOKqEA7Sdarl0V1//a01P+4/d3TneDPcNT
	l+pO5P42f8er3M5gOfwkARvkmde+SqUhPWITLSeV3CXkhN3ISu3yevD4BZLKo0+uIFGX9LEZByUYy
	sKpHC8GMOWSRBmenY/+jpkFifqr0/4o3nh0pBilR+Qs5SYVVKpYh6paqL++c9e7ZqIkf7Cwyu1StG
	CpKUwk3ypVDLjlr62/MmyPKKznMAFUOX8lSlQyf3Cy0Dbm912yNWS4hC6QsGzzmHXXTu1U6CciVfy
	/FlqQemrfMUhSFdT843Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5vbo-00000006SeI-4BsL;
	Fri, 27 Mar 2026 01:03:33 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5vbl-00000006Sdl-3ZgF
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 01:03:31 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4852c9b4158so12809125e9.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Mar 2026 18:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774573407; x=1775178207; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m9Niuzybzpc7ylc9yfsJfs0wdPfmTua5AraM+Dz5c0Q=;
        b=HIkvJIbNfN+n+M9eaHLwP1M7YqzgiMA52OYBQMEUlG0807FvlMCMXjSmZt/00bshkx
         1Rvyrxi0/rp25SMKgt7cbvf8iLwvhyrXkDDO1RWhP+nw7v1+U+zhVtnygMIHZLk2WerO
         WfKOvDLjEOWd0AXpFfQudMOftccU8cWwf23xAfHKFA3aEUZMI7W5/sDSmAzHklBpzwJU
         9j1CJTCqbQyHpHbdWScWn0uRK/kMg4VAwTvEAG6J4WGI+HpXStyHj5brs4/8prl+ycHj
         AKuDZ3e40vKi1Buo64FWVWcpd/De+aakz9b/DxwqvYRuWmFlNzaxQckiAaNCdL0xSTpp
         I8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774573407; x=1775178207;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m9Niuzybzpc7ylc9yfsJfs0wdPfmTua5AraM+Dz5c0Q=;
        b=SftXIOooA5yV3dnenOyPDWpNl04sytRtxA8el3BPC5fx/jBwX7t5VOJTIUVRQT03Td
         Z93FY7si8nsdYaJ52yqT1DP/Lb6MXJKhwFDJVHHWyj/h+Ogp3QSpOi71qjsK+oVBDulx
         sUVM/thBj37adXS0j86mDzSalH+s7h52TRPSe8KaHYvmUb/tDZNx6g5nCOehO7OH+vip
         A84Odf8/CVOiwCHyJ3dijT28GJHT1K69Hov10H/+yjmK4ov4jZUM3KcC+AId6Cg4kbet
         l/vrss18b8ztac93TiDxHNTi8wxh/zY7k9qh8nvuIBUiYW3V2fup1C6ystyjNvaQ3dLQ
         w3yg==
X-Forwarded-Encrypted: i=1; AJvYcCXUvH6rArhAt4T/1xv1NVXEp8R/R6ABfUvBuMpCZgcVEE7tmXFGmUfR7Mg9pCY/pKh6TBm09j4jrqY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiX6EFd+txro7UiSm/sNwaZvBTXK2dQDoEAVgEOpcq6dTDCO6R
	zGSNzqZrrjeTAGcSeKxZCGDc8lER/vjF1RSf3QwIth20T8ok1OfulUg70ruLrt9dyLE=
X-Gm-Gg: ATEYQzye1cfckrbDzXAHwW7EVGwjnxhW7hAjTCIbDw13ksHfLrJ8aRUYpqHgej+26aI
	lVe6+tkKQVNDmw/K57ChqWNoxUs+CqXhBma1+V5ho+dnMTDcv+NwOedxW0K8ORSB/a4JLtbO92u
	N1sS0ZSrvGGzAMcyc2bx8URzPEEBw9Bw5kgyvEIWV5UJMk9lfxcSAhh5IOkptjKsN7uE8dlvf/E
	kiKCEadJT/OOTtCqFzD8rHXAMw/8iYUosyLNpqk+cw4Gpst7pvP+LkNfDJVYBqwKSEUkbHGJ1H7
	Ga+5k0j5gWSYwDej33Yv6FS+xY9Eg794lVbQSCdP95h0iPzZhZE3w0YBimjeaNI5mjFiBS2u80y
	iyxhuvxfurqsTUn/x5guMSJRNir7CfraM0pVsygXNhy8K5mUbh7SBgM93QAcRZBqyj4pQmUE8gQ
	h/3rCX0nmFTmbAScVr8bCtn0KQSbVSmP3bFWMxfVvZ5vrg4A==
X-Received: by 2002:a05:600c:1d1f:b0:486:d76c:fa57 with SMTP id 5b1f17b1804b1-48727eb81bbmr11253345e9.17.1774573407044;
        Thu, 26 Mar 2026 18:03:27 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.111.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b9179b212sm12084513f8f.0.2026.03.26.18.03.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2026 18:03:26 -0700 (PDT)
Message-ID: <fedd369d-a0fc-4dbd-9862-3b6e3a403764@linaro.org>
Date: Fri, 27 Mar 2026 01:03:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
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
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <99287afe-90cb-44d5-91db-14c6b0f729fd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_180329_967030_4C910648 
X-CRM114-Status: GOOD (  11.57  )
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

T24gMjYvMDMvMjAyNiAxNDo0OSwgVmxhZGltaXIgWmFwb2xza2l5IHdyb3RlOgo+IEhlcmUgdGhl
IGRlc2NyaXB0aW9uIG9mIGhhcmR3YXJlIGlzIGRvbmUsIGFuZCBteSBwb2ludCBpcyB0aGF0IHRo
ZSBuZXcKPiBQSFlfUUNPTV9DU0kyX01PREVfU1BMSVRfRFBIWSBwaHkgdHlwZSBpcyBzaW1wbHkg
bm90IG5lZWRlZCwgc2luY2UgaXQncwo+IHBvc3NpYmxlIHRvIGdpdmUgYSBwcm9wZXIgZGVzY3Jp
cHRpb24gb2YgaGFyZHdhcmUgd2l0aG91dCB0aGlzIGludmVudGlvbi4KClBlcmhhcHMgSSdtIG5v
dCB1bmRlcnN0YW5kaW5nIHlvdS4KCklmIHdlIHVzZSBQSFlfVFlQRV9EUEhZCgppbmNsdWRlL2R0
LWJpbmRpbmdzL3BoeS9waHkuaDojZGVmaW5lIFBIWV9UWVBFX0RQSFkJCTEwCgpXZSBfbXVzdF8g
dGhlbiBhZGQgU1BMSVRfTU9ERSB0byBwaHkuaCBpZi93aGVuIHdlIGltcGxlbWVudCB0aGF0IApz
dXBwb3J0LiBXaGljaCBtZWFucyBzdWNjZXNzZnVsbHkgYXJndWluZyB0aGUgdG9zcyBvZiB3ZWF0
aGVyIFNQTElUX01PREUgCmlzIGEgUXVhbGNvbW1pc20gLSBhIHZlbmRvciBzcGVjaWZpYyBtb2Rl
IG9yIG5vdC4KCjwmcGh5IFBIWV9UWVBFX0RQSFk+IGNvbW1pdHRlZCB0byBhbiB1cHN0cmVhbSBk
dHMgd2lsbCB0aGVuIG5lZWQgdG8gYmUgCnN1cHBvcnRlZCBwZXJwZXR1YWxseS4KClNvIGZvciBl
eGFtcGxlIHFyYjU2MTUgLSBrb25hL3JiNSBzdXBwb3J0IHNwbGl0IG1vZGUuCgpQcmV0ZW5kIGdv
IHdpdGggPCZwaHkgUEhZX1RZUEVfRFBIWT47IGFuZCByZXRyb2ZpdCBpbmRpdmlkdWFsIFBIWSAK
c3VwcG9ydCB0byB0aGlzIHBsYXRmb3JtLgoKR3JhbmQgc28gZmFyLgoKVGhlIHByZXRlbmQgd2Ug
d2FudCB0byBzd2l0Y2ggZnJvbSBvbmUgc2Vuc29yIHRvIGEgc3BsaXQtbW9kZSBzZW5zb3Igb24g
CnRoZSBleGlzdGluZyBtZXp6YW5pbmUuCgpUaGVuIHdlIG5lZWQgYSByZXByZXNlbnRhdGlvbiBv
ZiBzcGxpdCBtb2RlIGluIHBoeS5oIHRvIHJlcHJlc2VudCB0aGF0IAppbiBEVC4KCjwmcGh5IFBI
WV9UWVBFX0RQSFlfU1BMSVRfTU9ERT47CgpFeGNlcHQgc3BsaXQtbW9kZSBpcyBub3QgYW4gYXBw
cm9wcmlhdGUgbW9kZSB0byBkZWZpbmUgaW4gcGh5Lmggc2luY2UgaXQgCmlzIHZlbmRvciBzcGVj
aWZpYyAtIGV2ZW4gaWYgYSBmZXcgdmVuZG9ycyBzdXBwb3J0IGl0LCBpdHMgbm90IGEgZ2VuZXJp
YyAKUEhZIG1vZGUuCgpIZW5jZSB3ZSB3b3VsZCBoYXZlIGFuIGVub3Jtb3VzbHkgZGlmZmljdWx0
IHRpbWUganVzdGlmeWluZyBhZGRpbmcgdGhhdCAKbW9kZSB0byBwaHkuaCBhbmQgcmlnaHRseSBz
by4KCj4+IGh0dHBzOi8vcmV2aWV3LmxpbmVhZ2Vvcy5vcmcvYy9MaW5lYWdlT1MvIAo+PiBhbmRy
b2lkX2tlcm5lbF9tb3Rvcm9sYV9zbTYzNzUvKy80MjM5NjAvMS9kcml2ZXJzL2NhbV9zZW5zb3Jf
bW9kdWxlLyAKPj4gY2FtX2NzaXBoeS9jYW1fY3NpcGh5X2NvcmUuYyNiMjg1Cj4+Cj4+IFRoZXJl
IGlzIGRpc2p1bmN0aW9uIGFsbCBvdmVyIHRoaXMgZmlsZSBkZXBlbmRpbmcgb24gdGhlIG1vZGUu
Cj4+Cj4+IGh0dHBzOi8vcmV2aWV3LmxpbmVhZ2Vvcy5vcmcvYy9MaW5lYWdlT1MvIAo+PiBhbmRy
b2lkX2tlcm5lbF9tb3Rvcm9sYV9zbTYzNzUvKy80MjM5NjAvMS9kcml2ZXJzL2NhbV9zZW5zb3Jf
bW9kdWxlLyAKPj4gY2FtX2NzaXBoeS9jYW1fY3NpcGh5X2NvcmUuYyNiNzY3CgoKT1RPSAoKLSBT
UExJVF9NT0RFIHdpbGwgY2VydGFpbmx5IHJlcXVpcmUgX2JvdGhfIHNlcGFyYXRlIGluaXQgc2Vx
dWVuY2VzCiAgIGFuZCBzcGVjaWZpYyBsb2dpY2FsIGRpc2p1bmN0aW9uIGZvciBhZGRpdGlvbmFs
IGNvbmZpZ3VyYXRpb24gc3RlcHMKICAgbGFuZS1hc3NpZ25tZW50IGFuZCBtYXNraW5nLCBldGMu
CgotIFRoYXQgcGh5LmggaXNuJ3QgdGhlIHJpZ2h0IGxvY2F0aW9uIGZvciBTUExJVF9NT0RFIGFz
IGl0cyB2ZW5kb3IKICAgc3BlY2lmaWMuIEp1c3QgbG9vayBhdCB0aGUgbW9kZXMgd2UgaGF2ZSBm
b3IgdGhlIFVTQiBQSFlzCiAgIHNhbWUgbG9naWMgPT4gaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkv
cGh5LXFjb20tcW1wLmggc2FtZQogICByYWlzb24gZCfDqnRyZQoKLSBBbmQgdGhhdCBzcGVjaWZ5
aW5nIFBIWV9UWVBFX0RQSFkgbm93IGJpbmRzIHVzIGludG8gYW4gQUJJIHRoYXQgd2UKICAgY2Fu
bm90IHN1YnNlcXVlbnRseSBjaGFuZ2UgLSBpdCB3aWxsIG5vdCBiZSBwb3NzaWJsZSB0byBpbnRy
b2R1Y2UKICAgaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LXFjb20tbWlwaS1jc2kyLmggbGF0
ZXIgb24gd2l0aCBvdXIgbW9kZQoKU28gdGhlcmVmb3JlIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5
L3BoeS1xY29tLW1pcGktY3NpMi5oICsgUEhZIG1vZGVzIGlzIAp0aGUgbG9naWNhbCBvdXRjb21l
LgoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
