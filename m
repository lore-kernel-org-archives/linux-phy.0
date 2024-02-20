Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3BD3C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 12:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlDV2eRYGLlgGzg9PLrCo39g+upWoLdjw+hwQGoRT7Q=; b=e7oWjlkrEdTVKW
	Iyh7yhCnwHnAoOBi4j8IkMf9tDEiyNN+Pq5/rxSlSkTp8ISNc2g2ea873n1Pcd2YFqbKBalsrL/Wc
	3rdjuqU7KlFHr0J05eXBwC5pXVEIou0aTzf3RCUi3P85kFCAO2K1H2lIffV6B57mA41coMtT8DaNq
	7ebtkjEFYy4OTXf82lJDyYhPt/zl4WMR/3SBzPAHTAqd2UPUjQEUP9hydVKFPgCIssWZYs9XOsOPV
	1W2JwSh/7ru/y3wHV4mPQKXH2k4zq2h77EM3IxWn0ZM/20e4hPSSjKjmTrc9jeVqxTY7/1hTR8rMo
	DuBa7vACvk3RQtb1ZvKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcPQW-0000000Ejfu-2fJn;
	Tue, 20 Feb 2024 12:40:48 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcPQT-0000000EjfC-1bSx
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 12:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1708432825; x=1709037625; i=markus.elfring@web.de;
	bh=ackbCV81XyEbD7DZSK1QNJr1u7ZHUTQZH151yHDIdOU=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=JOd+OAw0np9qZK8WoR7hHNlYpGDTcxGvCWObU9SA4t2cVmL7AI2TrdyjeBf6lDzR
	 WJN1gDbnHjaKOZu6G21ZbmSAan/w8kUcPkx/eC5Si65Q/RH06xYJLdrKVh3/3Ddr1
	 BL2SyMc3/Qsnm6PZz0mInnCFyavQgiUmeuvmbi11Dm+WJVt42OxOXrc2aG7v56lUn
	 bkvBlexEk7gYMuiirEpHIfemcqLFLLs7GES60iTe/HDkxO5L4A+TxXJZXLfJb/kds
	 AiWpCb15g+6yIGc1gRJKVbRmXqmUIafWYiQgBNH8I9N9Mr6o4/GT3mX4lxJ7RS/A6
	 Q4ZGYuz57TBtyxdZcQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.80.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MHmm4-1rgH1i3TOA-00EwPI; Tue, 20
 Feb 2024 13:40:24 +0100
Message-ID: <1bb22d53-2bfb-4fa7-9c4a-f49d979207ab@web.de>
Date: Tue, 20 Feb 2024 13:40:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [3/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org
Cc: Johan Hovold <johan+linaro@kernel.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Bjorn Andersson <andersson@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Clark <robdclark@gmail.com>, stable@vger.kernel.org
References: <20240217150228.5788-4-johan+linaro@kernel.org>
 <9ff4221a-7083-4cb1-abde-1690f655da8d@web.de>
 <ZdSMg63b4ZGYhUXO@hovoldconsulting.com>
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <ZdSMg63b4ZGYhUXO@hovoldconsulting.com>
X-Provags-ID: V03:K1:r+CHavyKhh73xuHY9wsEjvvyvp2FPjpfnjTyBrrjxbHa+zRr3E/
 RiJIddQORueuMddXYwNvCYF5KhgIjz1im8dJ4PZG7yiEWHxHhVtMSsEPFLOnMsRTEeoGsKi
 jCIVsHUoJPtUqrgmgi5k4whlTBRlG5mnoagRQKtuA6NqjfX8pOXeBLTy6jSgfZogRNfRX/k
 cg/xF0tVkCFkH1W1ooyhg==
UI-OutboundReport: notjunk:1;M01:P0:KtuAdgiy1ik=;y4ys3n9cM6RoSSuIK93yPw73zol
 pSyhNa3wJKuiPsj75tLL00VnROfe+KzG2al6/Rhvs4lZPTcXW6jz+ErDf4UVuWVC0sA5Y6nz+
 pzN07m7oQsgW+/FxGSD6px1OGNBQKMfFxFdq8z+/Eol/LzEDM3VHAqr0j6ViiL2IQpcODdflP
 On0tDmCes0Ju0RLWrvsKwaNXmbiZgnFu6N3LuqAXxbd6JGOzYuv/HJxLN97eiGUxcHXqaTpOb
 VulkDO0u7Vh9Z2ShIImU02TNC/nIhZOJaNGjQtTCB74eH+JVb13UPhGePUZnLUWKv7UWySMIK
 7mwMSVZDpl2cR4mKbcZ0Njhe8hk+fxsArS2guI5gL2aYT6bvY1fLdX62jl16+aXiJyzNphrh3
 zkRkPuTCfDcG0ZBAyL/MWkB08q0TijBJK/zmjUd0der0ZEO0thUrakZYQHeWbKnePiHqlyTEy
 tDDw9+w26IDa1M7uR8NVNK6BmjcMX5bMs0GEhvAcwQTQY8d5q/ieLyS6PjBDl4R8vX1opftl9
 8RoBXj5YonoO7WuTe6XP+j1EIkEec4VoFDGcCNtaAofjPIF563IIp6irkdWRRhU5LVNcacEdc
 yDt+lLKGdozKR5BG1JOdo32sSwYgPkSCvzvaYw2TiOP/NhID60aI10TcHXqGSw+XgAs9WLXlR
 t/NwYz6uDXRjrVQFBecPp0omdQzV+gtMSJv64VIWfqp+5tIkMv/5ipi90aOSyF9jlQDpZiH1U
 Emzes10uty02+3WM4bTqj5Hr9rJ/pskEz6Nb2j+B3uazjL7FdD9BIt+eD4HBJLOz9n+NStUvs
 sSiU89ntkAXEjBi6FraSIxizVT96J8+lcnHZdWbg+W4fM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_044045_812084_DDDEC4B5 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
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

Pj4gVGhlIGZ1bmN0aW9uIGNhbGwg4oCcZndub2RlX2hhbmRsZV9wdXQoZndub2RlKeKAnSBpcyB1
c2VkIGluIG11bHRpcGxlIGlmIGJyYW5jaGVzLgo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNv
bS9saW51eC92Ni44LXJjNS9zb3VyY2UvZHJpdmVycy9zb2MvcWNvbS9wbWljX2dsaW5rX2FsdG1v
ZGUuYyNMNDM1Cj4+Cj4+IEkgc3VnZ2VzdCB0byBhZGQgYSBqdW1wIHRhcmdldCBzbyB0aGF0IGEg
Yml0IG9mIGV4Y2VwdGlvbiBoYW5kbGluZwo+PiBjYW4gYmUgYmV0dGVyIHJldXNlZCBhdCB0aGUg
ZW5kIG9mIHRoaXMgZnVuY3Rpb24gaW1wbGVtZW50YXRpb24uCj4KPiBNYXJrdXMsIGFzIHBlb3Bs
ZSBoYXZlIHRvbGQgeW91IHJlcGVhdGVkbHksIGp1c3Qgc3RvcCB3aXRoIHRoZXNlIGNvbW1lbnRz
LgoKSG93IGRvZXMgc3VjaCBhIHJlc3BvbnNlIGZpdCB0byBhZHZpY2VzIGZyb20gYW5vdGhlciBr
bm93biBpbmZvcm1hdGlvbiBzb3VyY2VzPwoKU2VjdGlvbiDigJw3KSBDZW50cmFsaXplZCBleGl0
aW5nIG9mIGZ1bmN0aW9uc+KAnQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mv
Y29kaW5nLXN0eWxlLnJzdD9oPXY2LjgtcmM1I241MjYKCgo+IFlvdSdyZSBub3QgaGVscGluZywg
aW4gZmFjdCwgeW91IGFyZSBhY3RpdmVseSBoYXJtZnVsIHRvIHRoZQo+IGtlcm5lbCBjb21tdW5p
dHkgYXMgeW91IGFyZSB3YXN0aW5nIHBlb3BsZSdzIHRpbWUuCgpUaGUgcHJvcG9zZWQgc291cmNl
IGNvZGUgdHJhbnNmb3JtYXRpb24gY2FuIGV2ZW50dWFsbHkgYmUgKGF1dG9tYXRpY2FsbHkpIGFj
aGlldmVkCmFsc28gd2l0aCBoZWxwIG9mIGltcHJvdmVkIGRldmVsb3BtZW50IHRvb2xzLgoKUmVn
YXJkcywKTWFya3VzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
