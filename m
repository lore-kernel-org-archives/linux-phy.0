Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A59ACD98CF
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNCFTNvtAGdnQZ8iF28QsfS2eZx0KZcrlzZJzfg3LHA=; b=cwvjEzHQzLRJjj
	YQt4IRo7/3cALs5MtBz1DEL7rae6PKFWPzIrNHsUhD6te+m16S04MZF5FLx0batmxh0AdO+uEmot8
	8cMIhHspk6r/nAsYT8t6kBfWuQ6d6NTuC1rCkC9BfH39Z7pnMJ1sPLosB3xt7A68YnevAQ92/cl/G
	MqB6S4qC0src3h+LjuoP/ttXCRTdmazjDyXZticoA3gl4Dw8FsQBzsN8PtJ3iz4a4Z4c1EhOQH2gb
	IYt0r6rBlDbASAP7+MlPZ+qqdtvFol7w9ekAOzuAqbiVpeEiyzqsYsA4fRN3whS1CGL9/PWPaktaa
	5ySaZVs2UQWkJrWfGK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhLx-00000009gSw-2uje;
	Thu, 11 Jun 2026 15:29:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhLv-00000009gSg-3bGN
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:29:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B6F941790;
	Thu, 11 Jun 2026 15:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7715A1F00893;
	Thu, 11 Jun 2026 15:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781191795;
	bh=XMXAduZhXMi7sPl7wXbg3EtVrGgXmUglUtg25rqA6sk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ciZs+/DefC3FEetqmSahSCuzh6jGeMeQK5b4Os2DLrT6x8XwCcZ6miyLrc41TLVLE
	 2b8fO2LcXAv3deQMiZcAHtFSiKZ1pj/dRQRBnjUJFO7IP7wa2kyqAjqd+1xn7IDHEy
	 n99HHux03s27GRli38vb8VjILwRg3+AFUc7nMqrB9tF5YaoDUAXlMfpDTJTGfCHyDz
	 KdJ8qbVvvi6MbW84TrdyPpAFiJtDJAS5hCKNsgHriUUP1NDq3sEsTF1sjVN8w7nI5W
	 NbSvugawn36bUM3j8mftsVeiYpbVbjSZ8sn9HTCRM/z7T7IXNnpkK9REqhTnSzMa0J
	 GPIkUGgnI9Ktg==
Date: Thu, 11 Jun 2026 20:59:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: palash.kambar@oss.qualcomm.com
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mani@kernel.org, alim.akhtar@samsung.com,
	bvanassche@acm.org, andersson@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
	luca.weiss@fairphone.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
Message-ID: <airUb6wT-I-7cOXK@vaman>
References: <20260526090956.2340262-1-palash.kambar@oss.qualcomm.com>
 <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
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

T24gMjYtMDUtMjYsIDE0OjM5LCBwYWxhc2gua2FtYmFyQG9zcy5xdWFsY29tbS5jb20gd3JvdGU6
Cj4gRnJvbTogUGFsYXNoIEthbWJhciA8cGFsYXNoLmthbWJhckBvc3MucXVhbGNvbW0uY29tPgo+
IAo+IEFkZCB0aGUgaW5pdCBzZXF1ZW5jZSB0YWJsZXMgYW5kIGNvbmZpZyBmb3IgdGhlIFVGUyBR
TVAgcGh5IGZvdW5kIGluCj4gdGhlIEhhd2kgU29DLgoKVGhpcyBmYWlscyB0byBidWlsZCBmb3Ig
bWUgb24gcGh5L25leHQKCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtdWZzLmM6MjQ6CmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYzoxODc4OjI2OiBlcnJvcjog4oCYUVNFUkRFU19WOF9DT01fUExMX0lWQ09fTU9ERTHi
gJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhR
U0VSREVTX1Y2X0NPTV9QTExfSVZDT19NT0RFMeKAmT8KIDE4NzggfCAgICAgICAgIFFNUF9QSFlf
SU5JVF9DRkcoUVNFUkRFU19WOF9DT01fUExMX0lWQ09fTU9ERTEsIDB4MWYpLAogICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tbW9uLmg6MjI6Mjc6IG5vdGU6IGluIGRl
ZmluaXRpb24gb2YgbWFjcm8g4oCYUU1QX1BIWV9JTklUX0NGR+KAmQogICAyMiB8ICAgICAgICAg
ICAgICAgICAub2Zmc2V0ID0gbywgICAgICAgICAgICBcCiAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICBeCmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYzoxODc5
OjI2OiBlcnJvcjog4oCYUVNFUkRFU19WOF9DT01fQ01OX0lFVFJJTeKAmSB1bmRlY2xhcmVkIGhl
cmUgKG5vdCBpbiBhIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmFFTRVJERVNfVjZfQ09NX0NN
Tl9JRVRSSU3igJk/CiAxODc5IHwgICAgICAgICBRTVBfUEhZX0lOSVRfQ0ZHKFFTRVJERVNfVjhf
Q09NX0NNTl9JRVRSSU0sIDB4MDcpLAogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC1jb21tb24uaDoyMjoyNzogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhRTVBfUEhZ
X0lOSVRfQ0ZH4oCZCiAgIDIyIHwgICAgICAgICAgICAgICAgIC5vZmZzZXQgPSBvLCAgICAgICAg
ICAgIFwKCkFuZCBzbyBvbi4gTG9va3MgbGlrZSBRU0VSREVTX1Y4X0NPTV9QTExfSVZDT19NT0RF
MSBldGMgYXJlIG5vdCBkZWZpbmUuClBsZWFzZSByZWJhc2UgdGVzdCBhbmQgc2VuZCBhZ2FpbgoK
LS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
