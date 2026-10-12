Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53EB5CA9ED2
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7tFDiiUUkzKTKlobBztlZKL9cLxQ7SWsaDDjtQlYTU=; b=YrDTo99352gLSH
	1jnGpaDCeOaeOnSXYKrpP1wZ8LIMSKfc0wF9YTFFTQGSSCQY5Vqm2OMlm7j3+Jktv02DvslA8c5eK
	qlPQfaXsozUsytY5hHYWactJ9H7yYk4mo80QNzEXmz9VwDZPnfd/QDC0brlRpDEcunHJqnDHwaopT
	tIoAAXqF1LBQtHEvs8waZ2UQeQEo5cQ8dA0Dwafu0j8i7pJ1I2arLDXAX6qRXqIYGMsKrixghP11+
	FqE8rP6RRsdHsJGBqBGBwhWNCi9TS8sswhtvimN3u3FACcUuHkICQg3NO4G7gVRoLABMDeTCMy3Gj
	x0K8+p0xk13KK7A4oSyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBGz-00000009vIS-02W6;
	Mon, 12 Oct 2026 08:20:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBGy-00000009vHz-04D3
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:20:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1865C60DA5;
	Mon, 12 Oct 2026 08:20:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9264C1F0089B;
	Mon, 12 Oct 2026 08:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791793238;
	bh=wtGjqMDW3CpJJHF3B6yMKEQikZ5WiODedxSJ3vWP+Rk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=U4fh06Mq/+mxOG6tt+/NDp78ofjUvBWDu046poy6x3BmTg75VA7S8MjzqHihIBkVM
	 4hAb3HFhpe52IMCpdnpRJqVse9mvInxxic+HP7ro2H4JcaLdlfZhoQB37ozQtFG1+Z
	 K8FYeNjalhTx0PPdK9DhiOMwywXZTTtLOn+I4YPjMlpRjqbol0whdfyy+caAqc1Lg4
	 3RyCvC3l5AItlLbCiIf3SkbI8M2hOWjUeFq417+QiWBBGLuZpQgnWLlUJ4qwv7JHY+
	 nDPjIJ8/+aw6DnxRIcMjrKdqZkTNkfLIUFENaG8TDfxrR9L8IwT2n8m8BPUS4zJ31+
	 x8KSR7qy0TLWw==
Date: Mon, 12 Oct 2026 13:50:28 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, Andy Gross <agross@codeaurora.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 07/10] phy: qcom-ipq806x-usb: parse the tx-deamp-3_5db
 property as documented
Message-ID: <asyYLiGuhLFnyvwJ@debian>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDI6NDI6MzdQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBUaGUgZHJpdmVyIHJlYWRzIHRoZSB0cmFuc21pdCBkZS1lbXBoYXNpcyBvdmVy
cmlkZSBmcm9tCj4gcWNvbSx0eC1kZWFtcF8zXzVkYiB3aGlsZSB0aGUgYmluZGluZyBkb2N1bWVu
dHMgcWNvbSx0eC1kZWFtcC0zXzVkYiwKPiBzbyBhIGRldmljZSB0cmVlIGZvbGxvd2luZyB0aGUg
YmluZGluZyBpcyBzaWxlbnRseSBpZ25vcmVkIGFuZCB0aGUKPiBkZWZhdWx0IGlzIHVzZWQgaW5z
dGVhZC4gTm8gaW4tdHJlZSBkZXZpY2UgdHJlZSB1c2VzIGVpdGhlciBzcGVsbGluZy4KPiAKPiBQ
YXJzZSB0aGUgcHJvcGVydHkgdW5kZXIgaXRzIGRvY3VtZW50ZWQgbmFtZS4KPiAKPiBGaXhlczog
ZWYxOWIxMTdiODM0ICgicGh5OiBxdWFsY29tbTogYWRkIHFjb20gaXBxODA2eCBkd2MgdXNiIHBo
eSBkcml2ZXIiKQo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLWZhYmxlLTUKPiBTaWduZWQt
b2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5j
b20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
