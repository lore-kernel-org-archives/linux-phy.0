Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A9B4CA6017
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 09:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oh4i5mMTW3477DZnu+fRABfVPaub5Ict8rtb8fI5O0=; b=5DMlTeb5CvI5ie
	PuG48j7NJi9V2OfvpwOH6TvcioYgG+4e+u+cT5d2Hz24h0VzGoWoTqVyGPgzVxx/K5+iHnlsWVHor
	3ls20pkIdUWFAcZVzBgrZamgAi8nDYB45GQu5bb9f8PZkyb0G12IyAMduyu8Ld2z1wkYtY1OpzldJ
	OrfR9/XeG/uRGjyZVwkM7e2D0JWfkEe+COEz58VTGVp/bXIz+ZObPNTw7yhZKPm8pUZyY4Asqr6NC
	WCYRO0OvcLwn7BLgV2pe54P/jZzgpqqT4SFb5lRgajOb8nyz8cXFQDIlW6ibBweCXWiq6ng6FZ+cd
	RigPf7csbEVQVf0RcVaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTSX-00000007mD2-46c8;
	Sat, 10 Oct 2026 09:33:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFTSW-00000007mCd-0t3h
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 09:33:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4622C60200;
	Sat, 10 Oct 2026 09:33:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 874071F000FF;
	Sat, 10 Oct 2026 09:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791624819;
	bh=TXw3Ni6URvpp0I0ZUaTc/vb9zyesswSC4bRRpqSF8u4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DP+UlteofIWichMjfuuHbLDFbNGp0YJT0klYmCOGYnt5LALkbiKJALXy/LVtnsbA/
	 DQWeBLdnTd3GhW+7A/rY3pC8lsVCEMKCM4s1XZUJ51P1Stp4sBkI5moQXBG9WuQb+R
	 enPkAvw4jLqadSpWJVDi+Zmi8er0uWUuW8cirOSqeTKf9DewtI+mbIS8I9qj69WaZO
	 K0WQcF/BIBOY4D0zL6F5BMZQZ2lpT0kPrdr7P7CFK40/pFSI+NQwNv1w0zU8Et0GZs
	 nGBFUwhKdw39USik/R7PQ2cwyiW4gvr5Y9kmISe3uyEsdM7EOYVCH7Dwr0QHHbXI+J
	 zV1McpFkA/lYQ==
Message-ID: <sashiko-outbox-166399@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH] phy: qcom-mipi-csi2: round the requested settle
 interval up
To: fQwQf <fqwqf@fqwqf.xyz>
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <010601a1251fbfb9-9afc4070-5194-4714-86b1-5358791e7770-000000@ap-northeast-1.amazonses.com>
References: <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
 <010601a1251fbfb9-9afc4070-5194-4714-86b1-5358791e7770-000000@ap-northeast-1.amazonses.com>
Date: Sat, 10 Oct 2026 09:33:37 +0000
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBxY29tLW1p
cGktY3NpMjogdWlfcHMgcHJlY2lzaW9uIGxvc3MgYnJlYWtzIERJVl9ST1VORF9VUCBmaXgKLS0K
CmNvbW1pdCBlODgwZTZjNjIyOTFjNWI1NWM0NzhjNWUxMGEyNTVkODJjOTJkOWRlCkF1dGhvcjog
Sml6aG91IFRvbmcgPGZxd3FmQGZxd3FmLnh5ej4KCnBoeTogcWNvbS1taXBpLWNzaTI6IHJvdW5k
IHRoZSByZXF1ZXN0ZWQgc2V0dGxlIGludGVydmFsIHVwCgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRo
ZSBzZXR0bGluZyBjb3VudGVyIGNhbGN1bGF0aW9uIHRvIHJvdW5kIHVwIGluc3RlYWQgb2YKdHJ1
bmNhdGluZyB3aGVuIGRpdmlkaW5nIGJ5IHRoZSB0aW1lciBwZXJpb2QuIFRoaXMgYWltcyB0byBl
bnN1cmUgdGhlCnByb2dyYW1tZWQgdGlja3MgZG8gbm90IGZhbGwgc2hvcnQgb2YgdGhlIHJlcXVp
cmVkIGludGVydmFsLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTE3
LXgxZS1jc2kyLXBoeS12MTgtMi02NTE1YjUyNTVmYTlAbGluYXJvLm9yZy8KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMKPiBpbmRl
eCA5NjZkNzljOThmOWIyLi5jZTFkZTFhNjg5NDI5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMKPiBAQCAtMjM2LDcgKzIz
Niw4IEBAIHN0YXRpYyB1OCBwaHlfcWNvbV9taXBpX2NzaTJfc2V0dGxlX2NudF9jYWxjKHM2NCBs
aW5rX2ZyZXEsIHUzMiB0aW1lcl9jbGtfcmF0ZSkKPiAgCWlmICgodF9oc19zZXR0bGVfcHMgLyB0
aW1lcl9wZXJpb2RfcHMpIDwgNikKPiAgCQlyZXR1cm4gMDsKPiAgCj4gLQlzZXR0bGVfY250ID0g
dF9oc19zZXR0bGVfcHMgLyB0aW1lcl9wZXJpb2RfcHMgLSA2Owo+ICsJLyogRG8gbm90IHJvdW5k
IHRoZSByZXF1ZXN0ZWQgc2V0dGxpbmcgaW50ZXJ2YWwgZG93bi4gKi8KPiArCXNldHRsZV9jbnQg
PSBESVZfUk9VTkRfVVAodF9oc19zZXR0bGVfcHMsIHRpbWVyX3BlcmlvZF9wcykgLSA2OwoKW1Nl
dmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhlIGludGVybWVkaWF0ZSB0cnVuY2F0aW9uIGluIHRoZSBj
YWxjdWxhdGlvbiBvZiB0X2hzX3NldHRsZV9wcyBkZWZlYXQKdGhlIHB1cnBvc2Ugb2YgdGhpcyBE
SVZfUk9VTkRfVVAgZml4PwoKRWFybGllciBpbiBwaHlfcWNvbV9taXBpX2NzaTJfc2V0dGxlX2Nu
dF9jYWxjKCksIHRoZSB1bml0IGludGVydmFsIGlzCmNhbGN1bGF0ZWQgd2l0aCB0d28gaW50ZWdl
ciBkaXZpc2lvbnM6CgogICAgICAgIHVpX3BzID0gZGl2NjRfdTY0KFBTRUNfUEVSX1NFQywgbGlu
a19mcmVxKTsKICAgICAgICB1aV9wcyAvPSAyOwoKVGhpcyB1bmRlcmVzdGltYXRlcyB0aGUgdW5p
dCBpbnRlcnZhbCBieSB1cCB0byB+MS41cHMuIFNpbmNlCnRfaHNfcHJlcGFyZV9tYXhfcHMgbXVs
dGlwbGllcyB0aGlzIGJ5IDYsIHRoZSB0cnVuY2F0aW9uIGVycm9yIGlzIGFtcGxpZmllZAp0byB+
OXBzLgoKSWYgdGhlIHRydWUgbWF4aW11bSBwcmVwYXJlIHRpbWUgaXMganVzdCBhYm92ZSBhIG11
bHRpcGxlIG9mIHRoZSB0aW1lcgpwZXJpb2QgKGZvciBleGFtcGxlLCA5MCwwMDJwcyksIHRoaXMg
OXBzIGVycm9yIHB1c2hlcyB0aGUgY29tcHV0ZWQKdF9oc19zZXR0bGVfcHMganVzdCBiZWxvdyB0
aGF0IG11bHRpcGxlIChmb3IgZXhhbXBsZSwgODksOTk4cHMpLgoKSW4gdGhhdCBzY2VuYXJpbywg
RElWX1JPVU5EX1VQIHByb2R1Y2VzIDEgdGljayBsZXNzICg5IHRpY2tzIGluc3RlYWQgb2YgMTAp
LApjYXVzaW5nIHRoZSByZWNlaXZlciB3aW5kb3cgdG8gb3BlbiBhIGZ1bGwgdGltZXIgcGVyaW9k
IHRvbyBlYXJseS4gVGhpcwp3b3VsZCB2aW9sYXRlIHRoZSBNSVBJIEQtUEhZIFRfSFMtUFJFUEFS
RSBtYXggdGltaW5nIHByb3RvY29sIG9uIGJvcmRlcmxpbmUKbGluayBmcmVxdWVuY2llcy4KCkNv
dWxkIHRoaXMgYmUgYXZvaWRlZCBieSB1c2luZyBESVZfUk9VTkRfVVBfVUxMKDMgKiBQU0VDX1BF
Ul9TRUMsIGxpbmtfZnJlcSkKdG8gcHJldmVudCB0aGUgaW50ZXJtZWRpYXRlIHRydW5jYXRpb24/
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzAxMDYwMWExMjUxZmJmYjktOWFmYzQwNzAtNTE5NC00NzE0LTg2YjEtNTM1ODc5MWU3NzcwLTAw
MDAwMEBhcC1ub3J0aGVhc3QtMS5hbWF6b25zZXMuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
