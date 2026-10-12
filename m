Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53211CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 07:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tidvdp9/2m++hgOz5xIuGAXDEMXnvC9wRvvW3IwABYQ=; b=pZ042guNEZDqpA
	YvT9JS3MaQC3tyIV0ls5F0j9pvtnHpL0oq+MIcXStwFx+UoIqi3kzA5Y04LmKrt9XvRrUTV8+QHyH
	oEa4eif/uCD/kqg7o7gMm9tvvBvOfOkOnySYIQFtmpqIbNK3gxwWRW0fwCJRUZsgDfFC9OqUacyfd
	3AKqidTm1yx+juRRY9NB3lLdY/G9LT12FZBMMvX1xalTzuxD7x3FW0jO8Pb40iqGWTa4PVwm/tIH0
	Z50BKE76rRr20aw4x7UlyKQCPuU1n5vOBunzROqxIcSnTr4zMBhCevIWkF27kzRd+KxlpEr8oCK8p
	WcXCQxRyGMYsMv0l/Q5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA13-00000009nQy-08xO;
	Mon, 12 Oct 2026 07:00:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA12-00000009nQq-0Gj0
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 07:00:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C9AF60AA1;
	Mon, 12 Oct 2026 07:00:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEF21F0089B;
	Mon, 12 Oct 2026 07:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791788407;
	bh=MGy7PaJF7SUEz4M/idLMzz3p50/rc2J4LyMnYkTv8Y4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kJV2BjhMrXNjlXERpTtZceDD3YSOemuQPIP5phwOziaRso43zCCYPXTSDqaiLapjT
	 xcLHqEWZ13UX0oe7DWy836j0aT9wMpM7HGHFlZZ6Kda0O+/AE7ylZixIjKD9CY9qps
	 49GUfGWwb8muHrz8bK5Ima3s89PCkkRaPnI+tcJh4id/8NUMqU3JTHihX/zBZL7rH5
	 jAuvqLC364xhtWTXTmAusdPn7nBJRGzo1Ey+JIRUjSqqUGlcSUIs73Dh/jQadb36Fq
	 6whSg7p2vq+o9yQ8ZykZVfo7aXbBFLBqn65A+GdU2fiDtJExbgbjXwkJytJ4UfS0Ps
	 uZVgtPucLqpeQ==
Message-ID: <sashiko-outbox-167761@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v21 06/14] media: qcom: camss: Add Kaanapali compatible
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, media-ci@linuxtv.org
In-Reply-To: <20261011-kaanapali-camss-v21-6-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-6-04fd28d815c6@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 07:00:05 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBjYW1zczog
bWlzc2luZyBEVCBwb3J0IGJvdW5kcyBjaGVjayBjYXVzZXMgT09CIGFycmF5IGFjY2VzcyBvbiBj
c2lwaHkKLSBbSGlnaF0gbWVkaWE6IGNhbXNzOiBkZXZfcG1fZG9tYWluX2RldGFjaCgpIE5VTEwg
cG9pbnRlciBkZXJlZmVyZW5jZSBvbiBjbGVhbnVwCi0tCgpjb21taXQgMjI2YTU2OGRiZWExOTkx
ZjhiZGE0YzBiNzNkZTBjMzFmNjEyNTQ1ZQpBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5n
Lm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogcWNvbTogY2Ftc3M6IEFkZCBLYWFuYXBhbGkg
Y29tcGF0aWJsZQoKQWRkIENBTVNTX0tBQU5BUEFMSSBlbnVtLCBLYWFuYXBhbGkgY29tcGF0aWJs
ZSBhbmQgS2FhbmFwYWxpIENBTVNTIGRyaXZlcgpwcml2YXRlIGRhdGEuIFRoZSBwcml2YXRlIGRh
dGEgY3VycmVudGx5IGluY2x1ZGVzIG9ubHkgYmFzaWMgaW5mb3JtYXRpb24uCkxhdGVyIGNoYW5n
ZXMgd2lsbCBhZGQgQ1NJUEhZLCBUUEcsIENTSUQgYW5kIFZGRSByZXNvdXJjZXMuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy5jCj4gaW5kZXggYzU0MTg1YzkzYThh
OS4uZmNhM2RlMjE0YTkyMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fj
b20vY2Ftc3MvY2Ftc3MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy5jCgpbIC4uLiBdCgo+IEBAIC01NTc2LDYgKzU1OTAsMTMgQEAgc3RhdGljIHZvaWQg
Y2Ftc3NfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAljYW1zc19nZW5w
ZF9jbGVhbnVwKGNhbXNzKTsKPiAgfQo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBjYW1zc19y
ZXNvdXJjZXMga2FhbmFwYWxpX3Jlc291cmNlcyA9IHsKPiArCS52ZXJzaW9uID0gQ0FNU1NfS0FB
TkFQQUxJLAo+ICsJLnBkX25hbWUgPSAidG9wIiwKPiArCS5pY2NfcmVzID0gaWNjX3Jlc19rYWFu
YXBhbGksCj4gKwkuaWNjX3BhdGhfbnVtID0gQVJSQVlfU0laRShpY2NfcmVzX2thYW5hcGFsaSks
Cj4gK307Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpDYW4gdGhpcyBlbXB0eSBjc2lwaHkgY29uZmln
dXJhdGlvbiBsZWFkIHRvIGFuIG91dC1vZi1ib3VuZHMgYXJyYXkgYWNjZXNzIG9uCnRoZSBjc2lw
aHkgYXJyYXk/CgpJbiBjYW1zc19wYXJzZV9lbmRwb2ludF9ub2RlKCksIHRoZSBkZXZpY2UgdHJl
ZSBwb3J0IG51bWJlciBpcyBhc3NpZ25lZApkaXJlY3RseSB0byB0aGUgaW50ZXJmYWNlIElEIHdp
dGhvdXQgYm91bmRzIGNoZWNraW5nIGFnYWluc3QKY2Ftc3MtPnJlcy0+Y3NpcGh5X251bToKCglj
c2QtPmludGVyZmFjZS5jc2lwaHlfaWQgPSB2ZXAuYmFzZS5wb3J0OwoKU2luY2Uga2FhbmFwYWxp
X3Jlc291cmNlcyBvbWl0cyBjc2lwaHlfbnVtLCBpdCBkZWZhdWx0cyB0byAwLiBUaGlzIGNhdXNl
cwp0aGUgY2Ftc3MtPmNzaXBoeSBhcnJheSB0byBiZSBkeW5hbWljYWxseSBhbGxvY2F0ZWQgYXMg
YSBaRVJPX1NJWkVfUFRSLgoKSWYgYSBkZXZpY2UgdHJlZSBzcGVjaWZpZXMgYW4gZW5kcG9pbnQg
KGV2ZW4gcG9ydCA9IDwwPiksIGl0IGV2YWx1YXRlcyB0byBhbgpvdXQtb2YtYm91bmRzIGFjY2Vz
cyB3aGVuIHRoZSBhc3luYyBzdWJkZXZpY2UgYmluZHMgaW4KY2Ftc3Nfc3ViZGV2X25vdGlmaWVy
X2JvdW5kKCk6CgoJdTggaWQgPSBjc2QtPmludGVyZmFjZS5jc2lwaHlfaWQ7CglzdHJ1Y3QgY3Np
cGh5X2RldmljZSAqY3NpcGh5ID0gJmNhbXNzLT5jc2lwaHlbaWRdOwoKCWNzaXBoeS0+Y2ZnLmNz
aTIgPSAmY3NkLT5pbnRlcmZhY2UuY3NpMjsKCkNvdWxkIHRoaXMgY2F1c2UgYSByZWdyZXNzaW9u
IGxlYWRpbmcgdG8gYSBrZXJuZWwgcGFuaWMgaWYgdGhlIGRyaXZlcgpwcm9jZXNzZXMgYSBkZXZp
Y2UgdHJlZSBjb250YWluaW5nIGVuZHBvaW50cyBmb3IgdGhpcyBjb21wYXRpYmxlPwoKW1NldmVy
aXR5OiBIaWdoXQpDYW4gb21pdHRpbmcgdmZlX251bSBoZXJlIGxlYWQgdG8gYSBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UgZHVyaW5nIHBvd2VyCmRvbWFpbiBjbGVhbnVwPwoKRHVyaW5nIHByb2Jl
IGZhaWx1cmUgb3IgZHJpdmVyIHJlbW92YWwsIGNhbXNzX2dlbnBkX2NsZWFudXAoKSBoYW5kbGVz
IHBvd2VyCmRvbWFpbiBjbGVhbnVwOgoKCWlmIChjYW1zcy0+Z2VucGRfbnVtID09IDEpCgkJcmV0
dXJuOwoKCS4uLgoJZGV2X3BtX2RvbWFpbl9kZXRhY2goY2Ftc3MtPmdlbnBkLCB0cnVlKTsKCklm
IHRoZSBkcml2ZXIgaXMgYm9vdGVkIHdpdGggYSBkZXZpY2UgdHJlZSBsYWNraW5nIFBNIGRvbWFp
bnMsIGdlbnBkX251bQpjb3VsZCBiZSAwLiBUaGlzIG1lYW5zIGNhbXNzX2dlbnBkX2NsZWFudXAo
KSB3aWxsIG5vdCBleGl0IGVhcmx5LgoKSWYgY2Ftc3MtPmdlbnBkIHdhcyBuZXZlciBzdWNjZXNz
ZnVsbHkgYXR0YWNoZWQgKGZvciBleGFtcGxlLCBkdWUgdG8gaGF2aW5nCnplcm8gVkZFcyBvciBu
byBQTSBkb21haW5zIGNvbmZpZ3VyZWQpLCBpdCByZW1haW5zIE5VTEwuCgpCZWNhdXNlIGRldl9w
bV9kb21haW5fZGV0YWNoKCkgbGFja3MgYSBjaGVjayBmb3IgYSBOVUxMIGRldiBwb2ludGVyIGJl
Zm9yZQpkZXJlZmVyZW5jaW5nIGRldi0+cG1fZG9tYWluLCBjb3VsZCB0aGlzIHVuY29uZGl0aW9u
YWwgY2FsbCBjYXVzZSBhIHJlZ3Jlc3Npb24Kd2hlbiBjbGVhbmluZyB1cD8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTEta2Fh
bmFwYWxpLWNhbXNzLXYyMS0wLTA0ZmQyOGQ4MTVjNkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9NgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
