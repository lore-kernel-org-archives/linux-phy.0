Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D10C369C2
	for <linux-phy@archiver.kernel.org>; Tue, 22 Apr 2025 20:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCuiG8105CcfQvD65uVeqKkHnvZRlxjMQSOaGT5kz4E=; b=iaGc7F6ykgFjlA
	Tr1xMNv5lKgKhIECfFPXcPrHfZQjFGItH6V5tcpwBbR06cChRJSPyxJS8TgCJ7ZZ9tT8YHVwZosdq
	z7H/R9VLvgy46bxEP1UrI6tY628qYryERfBnPiNK1Cj753iqy5/TSgrxCgh96QG0t6B27l/LEl77O
	YhXMNdb81GEeJyx6Kizt+91+1U+9KKyH3XKRnJlp/+Ua9QrZORcsQH/mn6Z9ZrBIUAtpdioiHW7n1
	I9M/N3o4//yTp35Sr9eOCb9EDuNl8h9l+NLAj6cgVd9w6TJoVwy/LrjQ0YiBDA7/8pFtIziJzeMvK
	eGqWWlgynvI2Dg3Mt3Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7K5Y-00000008QpF-2yYg;
	Tue, 22 Apr 2025 20:19:28 +0000
Received: from send82.i.mail.ru ([89.221.237.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7K55-00000008Qlt-3hrO;
	Tue, 22 Apr 2025 20:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=jiaxyga.com
	; s=mailru; h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-Id:Date:Subject:From:From:Sender:Reply-To:To:Cc:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive:X-Cloud-Ids:Disposition-Notification-To;
	bh=iebI3MkzhqhNb0buAHKTzfrAJp6HFa4fEyurj7k9QOQ=; t=1745353120; x=1745443120; 
	b=aSIdAXSN+owVhB8LzB36N3DkYqSMCfVh6V6d7/1xpJhvwbKOHLeXfzW4uG+vi5vHmpQYV4FBifu
	8C62LHBFTRf5Rdc9B4kWjFQdmMnirbIV1fUutIfLQCt2e9Qaa6+GRcZOBDEggInIEW6B9oZEbelrn
	C46SiQ2IQHOITJ3oL40=;
Received: by exim-smtp-77d8cdf77b-httmk with esmtpa (envelope-from <danila@jiaxyga.com>)
	id 1u7K4U-00000000Adc-00tp; Tue, 22 Apr 2025 23:18:23 +0300
From: Danila Tikhonov <danila@jiaxyga.com>
Subject: [PATCH 00/33] Add support for Qualcomm Snapdragon SM7150 SoC and
 Google Pixel 4a
Date: Tue, 22 Apr 2025 23:17:01 +0300
Message-Id: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD35B2gC/x3MQQqAIBBA0avErBNGM8KuEi2kppqFFk5FEN49a
 fkW/78glJgE+uqFRDcL77FA1xVMm48rKZ6LwaBp0RqjJHS6RXUdcibyQTmHaLV1jSaEUh2JFn7
 +4zDm/AHbvmj+YQAAAA==
X-Change-ID: 20250422-sm7150-upstream-9900414931e0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Souradeep Chowdhury <quic_schowdhu@quicinc.com>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Alex Elder <elder@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Andy Gross <agross@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Imran Shaik <quic_imrashai@quicinc.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 David Wronek <david@mainlining.org>, Jens Reidel <adrian@mainlining.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org, 
 dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-hardening@vger.kernel.org, linux@mainlining.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Danila Tikhonov <danila@jiaxyga.com>, 
 Connor Mitchell <c.dog29@hotmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745353049; l=5706;
 i=danila@jiaxyga.com; s=20250422; h=from:subject:message-id;
 bh=46VHL5vhmoCeAp1Ym4uU4sBzGu8tfsJBNOQzyM37tHU=;
 b=60mTGvAzuTQlti9MzBWZQskN1/mP/WrztAI3VHmiWGObIrhdL0cs3fw9o6Vu7Rzc44MOXIPWV
 76QqaNXqQMJCD650RdNwWNX2rE6RhX9PN7kzj3ltUPynEFJYHHTVEii
X-Developer-Key: i=danila@jiaxyga.com; a=ed25519;
 pk=kkU4G47tvpSEUdBQEkXuWvTk/3WmGrVrdzZiKAKjBJo=
Authentication-Results: exim-smtp-77d8cdf77b-httmk; auth=pass smtp.auth=danila@jiaxyga.com smtp.mailfrom=danila@jiaxyga.com
X-Mailru-Src: smtp
X-7564579A: EEAE043A70213CC8
X-77F55803: 4F1203BC0FB41BD9563C565BC8219237D5DFFB79FDCADED6DE48DADD37CA2EEC182A05F5380850404C228DA9ACA6FE2793C387FCDC7C71EE3DE06ABAFEAF6705253A7DBABE01AAB36CAB699290A87B9A7B9585C59A2DDEF7
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7AB524098FB2F2222EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637AC83A81C8FD4AD23D82A6BABE6F325AC2E85FA5F3EDFCBAA7353EFBB5533756605D4038907BE0FDB876012C3BF043B45497C9FA7C24C7B2A6F557F55DE11AA42389733CBF5DBD5E913377AFFFEAFD269176DF2183F8FC7C000E2D00546020E658941B15DA834481FCF19DD082D7633A0EF3E4896CB9E6436389733CBF5DBD5E9D5E8D9A59859A8B6AEEA5BB16A939343CC7F00164DA146DA6F5DAA56C3B73B237318B6A418E8EAB8D32BA5DBAC0009BE9E8FC8737B5C224924A474D822E1F61376E601842F6C81A12EF20D2F80756B5FB606B96278B59C4276E601842F6C81A127C277FBC8AE2E8BE53CE7BD399AAB573AA81AA40904B5D99C9F4D5AE37F343AD1F44FA8B9022EA23BBE47FD9DD3FB595F5C1EE8F4F765FC72CEEB2601E22B093A03B725D353964B0B7D0EA88DDEDAC722CA9DD8327EE4930A3850AC1BE2E7355E1C53F199C2BB95B5C8C57E37DE458BEDA766A37F9254B7
X-C1DE0DAB: 0D63561A33F958A5EC0757841F447DAD5002B1117B3ED6963706A8DEBE433A298D59E407A97E9958823CB91A9FED034534781492E4B8EEADD6B8D1F75A55B56DF36E2E0160E5C55395B8A2A0B6518DF68C46860778A80D548E8926FB43031F38
X-C8649E89: 1C3962B70DF3F0ADE00A9FD3E00BEEDF77DD89D51EBB7742D3581295AF09D3DF87807E0823442EA2ED31085941D9CD0AF7F820E7B07EA4CF703FE251F748C1E5D27308FD4CF5D7396D50190868D45AA71A271C5A8A138314F09515A9A3E4BB8D68A835CA8743990B341249A7E886F8880E280A9F3BCC449B261E0ECD5CC99FEB6557FDD6B607B6B402C26D483E81D6BE72B480F99247062FEE42F474E8A1C6FD34D382445848F2F3
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu53w8ahmwBjZKM/YPHZyZHvz5uv+WouB9+ObcCpyrx6l7KImUglyhkEat/+ysWwi0gdhEs0JGjl6ggRWTy1haxBpVdbIX1nthFXMZebaIdHP2ghjoIc/363UZI6Kf1ptIMVS+uSU+BUhgv4DNKjNUrt/4=
X-Mailru-Sender: 9EB879F2C80682A0D0AE6A344B45275FE33E25B1C0D8A9380D8E165B5AC4796C06FAC53478C042799D6F4D2EBC31AC922C62728BC403A049225EC17F3711B6CF1A6F2E8989E84EC137BFB0221605B344978139F6FA5A77F05FEEDEB644C299C0ED14614B50AE0675
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_131900_556723_8805F021 
X-CRM114-Status: GOOD (  12.04  )
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

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgUXVhbGNvbW0gU25hcGRyYWdv
biA3MzAvNzMwRy83MzJHCihTTTcxNTApIHBsYXRmb3JtIGFsb25nIHdpdGggdGhlIEdvb2dsZSBQ
aXhlbMKgNGEgKHN1bmZpc2gpIGRldmljZS4gU2luY2UKdGhlIG1vc3QgY3JpdGljYWwgZHJpdmVy
cyB3ZXJlIHN1Ym1pdHRlZCBhbmQgYXBwbGllZCBpbiBzZXBhcmF0ZSBwYXRjaApzZXJpZXMsIHRo
aXMgc2VyaWVzIGlzIGxhcmdlbHkgY29tcG9zZWQgb2YgRFQgYmluZGluZ3MgYW5kIGRldmljZeKA
kXRyZWVzLgoKVG8gZGF0ZSwgd2XigJl2ZSB0ZXN0ZWQgU003MTUwIHN1cHBvcnQgb24gdGhlIGZv
bGxvd2luZyBlbGV2ZW4gZGV2aWNlczoKLSBHb29nbGUgUGl4ZWzCoDRhIChzdW5maXNoKQotIFNh
bXN1bmcgR2FsYXh5wqBBNzEgKGE3MTVmKQotIExlbm92byBUYWLCoFAxMcKgUHJvIChqNzA2ZikK
LSBYaWFvbWkgUE9DT8KgWDIgKHBob2VuaXgpCi0gWGlhb21pIFBPQ0/CoFgzIChrYXJuYSkgLyBQ
T0NPwqBYM8KgTkZDIChzdXJ5YSkKLSBYaWFvbWkgUmVkbWkgTm90ZcKgMTDCoFBybyAoc3dlZXQp
Ci0gWGlhb21pIFJlZG1pIE5vdGXCoDEywqBQcm8gKHN3ZWV0X2s2YSkKLSBYaWFvbWkgTWnCoDlU
IC8gUmVkbWkgSzIwIChkYXZpbmNpKQotIFhpYW9taSBNacKgTm90ZcKgMTDCoExpdGUgKHRvY28p
Ci0gWGlhb21pIE1pwqBOb3RlwqAxMCAoQ0M5wqBQcm8pICYgTWnCoE5vdGXCoDEwwqBQcm8gKEND
OcKgUHJvIFByZW1pdW0pICh0dWNhbmEpCi0gWGlhb21pIE1pwqAxMcKgTGl0ZcKgNEcgKGNvdXJi
ZXQpCgpBIGh1Z2UgdGhhbmvigJF5b3UgdG8gdGhlIFNNNzE1MCBjb21tdW5pdHkgZm9yIGFsbCB0
aGUgZGV2aWNlcy1wb3J0aW5nCndvcmssIHRlc3RpbmcgZWZmb3J0cywgYW5kIGJ1ZyByZXBvcnRz
LgoKUGF0Y2hlcyBhZGRpbmcgc3VwcG9ydCBmb3IgdGhlIGFmb3JlbWVudGlvbmVkIFhpYW9taSBk
ZXZpY2VzIHdpbGwgYmUKc3VibWl0dGVkIGFzIGEgc2VwYXJhdGUgc2VyaWVzLCBjb250aW5nZW50
IG9uIHRoaXMgc2VyaWVzIGJlaW5nIGFwcGxpZWQuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pbGEgVGlr
aG9ub3YgPGRhbmlsYUBqaWF4eWdhLmNvbT4KLS0tCkNvbm5vciBNaXRjaGVsbCAoMSk6CiAgICAg
IGFybTY0OiBkdHM6IHFjb206IHNtNzE1MDogQWRkIGRldmljZS10cmVlIGZvciBHb29nbGUgUGl4
ZWwgNGEKCkRhbmlsYSBUaWtob25vdiAoMjUpOgogICAgICBkdC1iaW5kaW5nczogYXJtOiBjcHVz
OiBBZGQgS3J5byA0NzAgQ1BVcwogICAgICBkdC1iaW5kaW5nczogY3B1ZnJlcTogcWNvbS1odzog
QWRkIHRoZSBTTTcxNTAgY29tcGF0aWJsZQogICAgICBkdC1iaW5kaW5nczogd2F0Y2hkb2c6IHFj
b20td2R0OiBBZGQgdGhlIFNNNzE1MCBjb21wYXRpYmxlCiAgICAgIGR0LWJpbmRpbmdzOiBzcmFt
OiBxY29tLGltZW06IEFkZCB0aGUgU003MTUwIGNvbXBhdGlibGUKICAgICAgZHQtYmluZGluZ3M6
IHRoZXJtYWw6IHRzZW5zOiBBZGQgdGhlIFNNNzE1MCBjb21wYXRpYmxlCiAgICAgIGR0LWJpbmRp
bmdzOiBtbWM6IHNkaGNpLW1zbTogQWRkIHRoZSBTTTcxNTAgY29tcGF0aWJsZQogICAgICBkdC1i
aW5kaW5nczogc29jOiBxY29tLGRjYzogQWRkIHRoZSBTTTcxNTAgY29tcGF0aWJsZQogICAgICBk
dC1iaW5kaW5nczogbWZkOiBxY29tLHRjc3I6IEFkZCB0aGUgU003MTUwIGNvbXBhdGlibGUKICAg
ICAgZHQtYmluZGluZ3M6IG5ldDogcWNvbSxpcGE6IEFkZCB0aGUgU003MTUwIGNvbXBhdGlibGUK
ICAgICAgZHQtYmluZGluZ3M6IGRtYWVuZ2luZTogcWNvbTogZ3BpOiBBZGQgdGhlIFNNNzE1MCBj
b21wYXRpYmxlCiAgICAgIGR0LWJpbmRpbmdzOiBudm1lbTogcWZwcm9tOiBBZGQgdGhlIFNNNzE1
MCBjb21wYXRpYmxlCiAgICAgIGR0LWJpbmRpbmdzOiBjcnlwdG86IHFjb20saW5saW5lLWNyeXB0
by1lbmdpbmU6IEFkZCB0aGUgU003MTUwIGNvbXBhdGlibGUKICAgICAgZHQtYmluZGluZ3M6IGlu
dGVyY29ubmVjdDogcWNvbS1id21vbjogQWRkIHRoZSBTTTcxNTAgY29tcGF0aWJsZQogICAgICBk
dC1iaW5kaW5nczogaTJjOiBxY29tLWNjaTogQWRkIHRoZSBTTTcxNTAgY29tcGF0aWJsZQogICAg
ICBkdC1iaW5kaW5nczogY2xvY2s6IHFjb20tcnBtaGNjOiBBZGQgdGhlIFNNNzE1MCBjb21wYXRp
YmxlCiAgICAgIGR0LWJpbmRpbmdzOiBpbnRlcmNvbm5lY3Q6IE9TTSBMMzogQWRkIHRoZSBTTTcx
NTAgY29tcGF0aWJsZQogICAgICBkdC1iaW5kaW5nczogYXJtLXNtbXU6IEFkZCB0aGUgU003MTUw
IGNvbXBhdGlibGUKICAgICAgZHQtYmluZGluZ3M6IGNsb2NrOiBxY29tLGdwdWNjOiBBZGQgdGhl
IFNNNzE1MCBjb21wYXRpYmxlCiAgICAgIGR0LWJpbmRpbmdzOiByZW1vdGVwcm9jOiBxY29tOiBz
YzcxODAtcGFzOiBBZGQgdGhlIFNNNzE1MCBjb21wYXRpYmxlCiAgICAgIHJlbW90ZXByb2M6IHFj
b206IHBhczogQWRkIFNNNzE1MCByZW1vdGVwcm9jIHN1cHBvcnQKICAgICAgY3B1ZnJlcTogQWRk
IFNNNzE1MCB0byBjcHVmcmVxLWR0LXBsYXRkZXYgYmxvY2tsaXN0CiAgICAgIGZpcm13YXJlOiBx
Y29tOiB0em1lbTogZGlzYWJsZSBzbTcxNTAgcGxhdGZvcm0KICAgICAgYXJtNjQ6IGR0czogcWNv
bTogQWRkIGR0c2kgZm9yIFNuYXBkcmFnb24gNzMwLzczMGcvNzMyZyAoU003MTUwKSBTb0NzCiAg
ICAgIGR0LWJpbmRpbmdzOiBhcm06IHFjb206IEFkZCBTTTcxNTAgR29vZ2xlIFBpeGVsIDRhCiAg
ICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBwYW5lbDogc2Ftc3VuZyxhbXM1ODF2ZjAxOiBBZGQg
Z29vZ2xlLHN1bmZpc2gKCkRhdmlkIFdyb25layAoNik6CiAgICAgIGR0LWJpbmRpbmdzOiBtYWls
Ym94OiBxY29tOiBBZGQgdGhlIFNNNzE1MCBBUENTIGNvbXBhdGlibGUKICAgICAgZHQtYmluZGlu
Z3M6IHNvYzogcWNvbTogYW9zcy1xbXA6IEFkZCB0aGUgU003MTUwIGNvbXBhdGlibGUKICAgICAg
ZHQtYmluZGluZ3M6IGludGVycnVwdC1jb250cm9sbGVyOiBxY29tLXBkYzogQWRkIHRoZSBTTTcx
NTAgY29tcGF0aWJsZQogICAgICBkdC1iaW5kaW5nczogdXNiOiBkd2MzOiBBZGQgdGhlIFNNNzE1
MCBjb21wYXRpYmxlCiAgICAgIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20scXVzYjI6IEFkZCB0aGUg
U003MTUwIGNvbXBhdGlibGUKICAgICAgZHQtYmluZGluZ3M6IHVmczogcWNvbTogQWRkIHRoZSBT
TTcxNTAgY29tcGF0aWJsZQoKSmVucyBSZWlkZWwgKDEpOgogICAgICBzb2M6IHFjb206IHBkLW1h
cHBlcjogQWRkIHN1cHBvcnQgZm9yIFNNNzE1MAoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vY3B1cy55YW1sICAgIHwgICAgMSArCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3Fjb20ueWFtbCAgICB8ICAgIDYgKwogLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvY2xvY2svcWNvbSxncHVjYy55YW1sICAgICAgfCAgIDI5ICstCiAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9jbG9jay9xY29tLHJwbWhjYy55YW1sICAgICB8ICAgNTMgKy0KIC4uLi9iaW5k
aW5ncy9jcHVmcmVxL2NwdWZyZXEtcWNvbS1ody55YW1sICAgICAgICAgIHwgICAgMiArCiAuLi4v
YmluZGluZ3MvY3J5cHRvL3Fjb20saW5saW5lLWNyeXB0by1lbmdpbmUueWFtbCB8ICAgIDEgKwog
Li4uL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc2Ftc3VuZyxhbXM1ODF2ZjAxLnlhbWwgfCAgICA4
ICstCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvcWNvbSxncGkueWFtbCAgICAgICAgICB8
ICAgIDEgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55YW1sICAg
ICAgfCAgICAyICsKIC4uLi9iaW5kaW5ncy9pbnRlcmNvbm5lY3QvcWNvbSxtc204OTk4LWJ3bW9u
LnlhbWwgIHwgICAgMiArCiAuLi4vYmluZGluZ3MvaW50ZXJjb25uZWN0L3Fjb20sb3NtLWwzLnlh
bWwgICAgICAgICB8ICAgIDEgKwogLi4uL2JpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL3Fj
b20scGRjLnlhbWwgICAgfCAgICAxICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lvbW11L2Fy
bSxzbW11LnlhbWwgICAgICAgIHwgICAgMyArCiAuLi4vYmluZGluZ3MvbWFpbGJveC9xY29tLGFw
Y3Mta3Bzcy1nbG9iYWwueWFtbCAgICB8ICAgIDEgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
bWZkL3Fjb20sdGNzci55YW1sICAgICAgICAgfCAgICAxICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21tYy9zZGhjaS1tc20ueWFtbCAgICAgICAgIHwgICAgMSArCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvcWNvbSxpcGEueWFtbCAgICAgICAgICB8ICAgIDQgKwogLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvbnZtZW0vcWNvbSxxZnByb20ueWFtbCAgICAgfCAgICAxICsKIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2IyLXBoeS55YW1sICAgIHwgICAgMSArCiAuLi4v
YmluZGluZ3MvcmVtb3RlcHJvYy9xY29tLHNjNzE4MC1wYXMueWFtbCAgICAgICB8ICAgMTQgKy0K
IC4uLi9iaW5kaW5ncy9zb2MvcWNvbS9xY29tLGFvc3MtcW1wLnlhbWwgICAgICAgICAgIHwgICAg
MSArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvcWNvbS9xY29tLGRjYy55YW1sICAgICB8
ICAgIDEgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc3JhbS9xY29tLGltZW0ueWFtbCAgICAg
ICAgfCAgICAxICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcWNvbS10c2Vucy55
YW1sICAgIHwgICAgMSArCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMueWFt
bCAgICAgICAgICB8ICAgIDIgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Fjb20sZHdj
My55YW1sICAgICAgICAgfCAgICAzICsKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9n
L3Fjb20td2R0LnlhbWwgICAgIHwgICAgMSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vTWFr
ZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgIDEgKwogYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NtNzE1MC1nb29nbGUtc3VuZmlzaC5kdHMgfCAgOTAxICsrKysKIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zbTcxNTAuZHRzaSAgICAgICAgICAgICAgIHwgNTAxMCArKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEtZHQtcGxhdGRldi5jICAgICAgICAgICAgICAg
fCAgICAxICsKIGRyaXZlcnMvZmlybXdhcmUvcWNvbS9xY29tX3R6bWVtLmMgICAgICAgICAgICAg
ICAgIHwgICAgMSArCiBkcml2ZXJzL3JlbW90ZXByb2MvcWNvbV9xNnY1X3Bhcy5jICAgICAgICAg
ICAgICAgICB8ICAgIDMgKwogZHJpdmVycy9zb2MvcWNvbS9xY29tX3BkX21hcHBlci5jICAgICAg
ICAgICAgICAgICAgfCAgIDExICsKIDM0IGZpbGVzIGNoYW5nZWQsIDYwMzEgaW5zZXJ0aW9ucygr
KSwgNDAgZGVsZXRpb25zKC0pCi0tLQpiYXNlLWNvbW1pdDogMmM5YzYxMmFiZWIzOGFhYjBlODdk
NDg0OTZkZTZmZDZkYWFmYjAwYgpjaGFuZ2UtaWQ6IDIwMjUwNDIyLXNtNzE1MC11cHN0cmVhbS05
OTAwNDE0OTMxZTAKCkJlc3QgcmVnYXJkcywKLS0gCkRhbmlsYSBUaWtob25vdiA8ZGFuaWxhQGpp
YXh5Z2EuY29tPgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
