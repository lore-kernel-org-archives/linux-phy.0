Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD14CA9EDD
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOQNze7CTRZixHfXP2O8J2tOSYlcSEAQCHxHGl9oA80=; b=24DnW2hna9WZQB
	RalrybiDWqLe25bU5tfg9rM7sxkjilsS9JfPOOhYIK5RkDfsej/KNX80nkUTUmVCJCNDxYYUuHILZ
	AjUG6bcoErT32FQsrdBo1PlMxkp0NKL30ZlFhv0lI1ZMRZ/tICBjV5QRthUPbzkaO4KqQlvLEyfVB
	njv3f9Lo67O+ATrE/a1n6Sr3houiujZhCxRv7QpzIeEgEDpDOSaiMxMBRDp7KSA+uUpNEkr1s7Blt
	/D059hXkChrwwjZolUNifEkAb5L0ZXxorfu7OqITffizxkEd8fF0cTLj0kJ+ZrvYTLJZT/6IzkY9z
	dOXwaYIW7F7JQoTLyAdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBGC-00000009vBH-3ZaH;
	Mon, 12 Oct 2026 08:19:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGBGB-00000009vB7-2aVa
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 08:19:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 60B0D41A84;
	Mon, 12 Oct 2026 08:19:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 785E41F0089B;
	Mon, 12 Oct 2026 08:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791793191;
	bh=Pt8dgJWek7/0/LhAmTZzYWHs1dc5eBB3jyEzUfzCwPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IovvEw23o4JOxMRvlwPv5HJ/Hb2AlhEMasVk4bqSR24fsLDUuhRyAPI0AgbmBJMPc
	 +qAz7NmiPAtyG0ZsfnDymrKSQh4ehZhJabtS3NNn3aACrcYSFQBo4ZvKb0yxsQjHxF
	 LOLbsY+g2AVfDu2ZklCRbNp8KzHtSNehYfV+DkAda1sjGWqvkHAM4TMLF71ekvTvRR
	 qIuYNlm9CfvFJJndbVYYaA57HqvVdCSlbiKb/OeUD3nTgzkh305qZ8cqtBTKvLtW5K
	 dq2H5dgG/nogXHksvD+yNTlejovr9RGqWVfMYiZg6F1qEyzU1qMfQSPh/pFp5KH5zG
	 CfEgrdE714Ehw==
Date: Mon, 12 Oct 2026 13:49:41 +0530
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
Subject: Re: [PATCH 06/10] phy: qcom-ipq806x-usb: fix the PHY_PARAM_CTRL1
 field masks
Message-ID: <asyYFw2UACD1XRzD@debian>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-6-1a47e1185524@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb3-v1-6-1a47e1185524@oss.qualcomm.com>
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

T24gTW9uLCBBdWcgMTAsIDIwMjYgYXQgMDI6NDI6MzZQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBFYWNoIG9mIHRoZSBQSFlfUEFSQU1fQ1RSTDEgZmllbGQgbWFza3MgZXh0ZW5k
cyBvbmUgYml0IGJlbG93IGl0cwo+IGRvY3VtZW50ZWQgZmllbGQ6IFRYX0ZVTExfU1dJTkcgWzI2
OjIwXSBpcyBjb2RlZCBhcyBHRU5NQVNLKDI2LCAxOSksCj4gVFhfREVFTVBIXzZEQiBbMTk6MTRd
IGFzIEdFTk1BU0soMTksIDEzKSwgVFhfREVFTVBIXzNfNURCIFsxMzo4XSBhcwo+IEdFTk1BU0so
MTMsIDcpIGFuZCBMT1NfQklBUyBbNzozXSBhcyBHRU5NQVNLKDcsIDIpLiBBbHNvLCB0aGUgZmll
bGQKPiBkZXNjcmliZWQgYXMgTE9TX0JJQVMgaW4gcmVhbGl0eSBpcyBjYWxsZWQgTE9TX0xFVkVM
LiBGSUVMRF9QUkVQIGFnYWluc3QKPiB0aGVzZSBtYXNrcyBwbGFjZXMgZXZlcnkgdmFsdWUgb25l
IGJpdCBzaG9ydCBvZiBpdHMgZmllbGQsIHNvIHRoZQo+IHByb2dyYW1tZWQgc3dpbmcvZGUtZW1w
aGFzaXMvTE9TIHBhcmFtZXRlcnMgbGFuZCBzaGlmdGVkIGFuZCB0aGUKPiBuZWlnaGJvdXJpbmcg
ZmllbGRzIGFyZSBjb3JydXB0ZWQ7IHRoZSBtYXNrZWQgd3JpdGUtcmVhZGJhY2sgaW4gdGhlIFNT
Cj4gUEhZIGluaXQgcmVwb3J0cyAnd3JpdGU6IC4uLiB0byBRU0NSQVRDSDogNCBGQUlMRUQnLgo+
IAo+IEFsaWduIHRoZSBtYXNrcyB3aXRoIHRoZSBkb2N1bWVudGVkIGZpZWxkIHBvc2l0aW9ucy4K
PiAKPiBGaXhlczogZWYxOWIxMTdiODM0ICgicGh5OiBxdWFsY29tbTogYWRkIHFjb20gaXBxODA2
eCBkd2MgdXNiIHBoeSBkcml2ZXIiKQo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLWZhYmxl
LTUKPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9z
cy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
