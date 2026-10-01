Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240A2CA5FD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 15:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1GBdLVdDoui1HXVmzA8D3zdYe3rFm1J0WB+vffKZ5aw=; b=z9e6tSbRk/Wcf5
	Xuf0Di8zu7v5NmwGXiLvzObyS49YVP/BAU+XU+hF16sErJfZXRYwcwgM3RdVV9lkkv60Kxo0Er/KN
	B8zcIAI09y5J0wWMVXTpXilAkJqT1HnxHXeAiyikXYTmnFQPSiW+WmRuayLhRIKhdFdhrimDWyGaG
	IlgzWsUxaXpNk3/gfmlOdgCouKWPGSf1JuGYTuxKJBV6yus6i+jxOCxD0ohq4PkWqbpMhq9nCV0Fc
	8Qac+6xRythPnc8VvKTG0pEt0SCL6+mMkW+DBxUWzbgwA3Czr+mQEWOdQNkA1HQNQg9hGHLmgsu9I
	zcwrwJcjeoby2OZ8RVbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCIZY-00000009V6j-1PrN;
	Thu, 01 Oct 2026 15:19:48 +0000
Received: from mail-wr2-x0e.google.com ([2a00:1450:4864:30::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCIZV-00000009V4q-2RVJ
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 15:19:46 +0000
Received: by mail-wr2-x0e.google.com with SMTP id ffacd0b85a97d-48b01fd0ff1so275244f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 08:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790867983; x=1791472783; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P5xSPKk+m+iRcX7pWXBAMbyjKdLdGZon4dYuunMEzUY=;
        b=RcIYT7pL2MlaQTocF2YagvpG8nvLxx8TaA9phaePJLThkJ/VjIMfxKBvm8Sm1KvaCL
         CsC/qF8lPiDoDmX9yZYhPWh/re2uH8Eu4AlLF6l3y+WJBO42SZjKKZrMuPNmro5GXFSc
         YDS8P+wwr+5coow6mwVG0gbBkeGH/2rJ5cegNy6dLALpeygOMNePrgnbrPNVZ1KvUT4X
         jdshR0ZVi+Bj9z2a6trrOUdDj6TPxR6gB7u1tQ0X2BtJRjIEQ7tilEnHytRDgWcOzf6P
         tzR6opg6WPwLBULgjWhQOnPl1xzMyKNJzwBTQZtWxxSUvlQd7NNz5mi5zu2/LeEygUcH
         9s5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790867983; x=1791472783;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=P5xSPKk+m+iRcX7pWXBAMbyjKdLdGZon4dYuunMEzUY=;
        b=rCuJaHuGx9Bnh3JaKbovxRRT/J8l4qTuoccd8RpQAc2DRG3/rOaP/SUoUK9gdUmiPx
         YcZDxQsbQpfIa7WGeb4G7uksUbSc5A0vfdRnvW8KXzKEujx/SGhoePQTYf1CedugjIcg
         q9T5Emk3oKeYbKpsqc9nAU+UPo4xOl6cZL/aKnxBINZcRGNvrgZHcyp1o9UZsr/GhIZ4
         g9MjcZDF6Yp+oxv7Lhva9Kk8JKf0UDqJCMatmOC5b9Ihbqid8TWrEFhcKWOKQNWDMKl9
         2/AUPOUhsjK2bL7Q8V3XPh6F9SvJ+zPugw2EORjCtbfFOVhquA50j+/GrbUpGZuBCPn7
         BP8A==
X-Forwarded-Encrypted: i=1; AKwUvBwrMcFlgTxag0n52/kF8/mUH2cv0gN3xDYsTHGmP3sbgUhQKnI31ivW0fu/QDBdYSjTBGLspY+qsLY=@lists.infradead.org
X-Gm-Message-State: AFq9FYKa8JJMsvnSLOPCgaTwR0W7cMwLdzFCzlGoqTBfud6a8d/mqnr9
	T3MfCYnOFCPROtQYJA0yMUYYf/70DZHUXJ16VVaAhtfIA7SA4ULFJSJ5
X-Gm-Gg: AYBFou1qWfVB0W515fbt/dnuMzcPHVh9ctNKdfSYv8IeXNCMpw0CTiBdfEsUWjfYY6y
	JhifDtNX0ORwy17qr2lnS+ZrEG656stJstfgx0MNOjuwuOTmNxyRdXXZ+GPv/3GYttW8VUwV1RH
	1HyT1pRnTpPuIs2UIaOsYjoIi+5w9EuodE1KeWMl3IfanrQZATaPUSgvK4bREmKwN/kfR85exn/
	GoL0kPHQ3sVkjGKQYGz5LaT9kJGdsGPxOv+X93SVglwkgdBoq0/O0PHBizXQn4NT9B2oSgDMiMz
	dkr8gq1SLo1AOPn0H98ifkmY0o1UGMch20mV26fTk7RPLqwoVEODdMROEF9ggH2+KcXiyZO4/IO
	Dt/cW9mhG4jfV7aD5ppH9IZ7xMq5oialIFX8BxycJ/wJ0X1pASUsabqxqkkKOcn5EqTzSkZ3A9N
	uoZUclL/0s412CGMsUC2UvQOEyN/CxvbkL4r94zGuwMY78py2Hq/YC5dz6Gifds4M+zpW3mvofC
	3FPaWXNwrzHc8Xr24iYHfHrFGD9HAK6q3RDVwyYstQVQw==
X-Received: by 2002:a5d:5f42:0:b0:488:7787:4696 with SMTP id ffacd0b85a97d-48b11a1adc8mr1050622f8f.5.1790867983076;
        Thu, 01 Oct 2026 08:19:43 -0700 (PDT)
Received: from StepanMacBook.lan ([85.193.43.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b0db6de18sm3399154f8f.44.2026.10.01.08.19.42
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 01 Oct 2026 08:19:42 -0700 (PDT)
Received: by StepanMacBook.lan (Postfix, from userid 501)
	id C4C55F89B703; Thu,  1 Oct 2026 17:19:41 +0200 (CEST)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20Daleck=C3=BD?= <daleckystepan@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20Daleck=C3=BD?= <daleckystepan@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: marvell: a3700-comphy: Guard missing polarity argument
Date: Thu,  1 Oct 2026 17:19:38 +0200
Message-ID: <20261001151939.23658-1-daleckystepan@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_081945_644712_CD91C4E6 
X-CRM114-Status: GOOD (  12.96  )
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

VGhlIEFybWFkYSAzNzAwIENPTVBIWSBiaW5kaW5nIHNwZWNpZmllcyAjcGh5LWNlbGxzID0gPDE+
LCBzbyBQSFkKcmVmZXJlbmNlcyBzdXBwbHkgb25seSB0aGUgcG9ydCBhcmd1bWVudC4gSG93ZXZl
ciwKbXZlYnVfYTM3MDBfY29tcGh5X3hsYXRlKCkgdW5jb25kaXRpb25hbGx5IHJlYWRzIGFyZ3Nb
MV0gdG8gc2VsZWN0IFRYCmFuZCBSWCBwb2xhcml0eSBpbnZlcnNpb24uIFRoZSBQSFkgY29yZSBk
b2VzIG5vdCBpbml0aWFsaXplIGl0cwpvZl9waGFuZGxlX2FyZ3Mgc3RydWN0dXJlLCBhbmQgdGhl
IHBoYW5kbGUgcGFyc2VyIGZpbGxzIG9ubHkgdGhlCnN1cHBsaWVkIGNlbGxzLCBsZWF2aW5nIGFy
Z3NbMV0gdW5pbml0aWFsaXplZC4KClVzaW5nIHRoZSB1bnVzZWQgY2VsbCBjYW4gcHJvZ3JhbSB1
bmludGVuZGVkIFNlckRlcyBwb2xhcml0eS4gT24gYQpUdXJyaXMgTU9YIHdpdGggYSBQZXJpZG90
IHN3aXRjaCBydW5uaW5nIE9wZW5XcnQgd2l0aCBMaW51eCA2LjE4LjU0LAp0aGUgQ1BVIGxpbmsg
cmVwb3J0cyBSWCBDUkMgZXJyb3JzIGFuZCBmYWlscyB0byBwYXNzIHRyYWZmaWMuIFRoZQpzd2l0
Y2ggUENTIGRvZXMgbm90IHJlY29yZCBhIHBhcnRuZXIgYWR2ZXJ0aXNlbWVudCBkZXNwaXRlIGxp
bmstdXAuCgpDaGVjayBhcmdzX2NvdW50IGJlZm9yZSByZWFkaW5nIGFyZ3NbMV0sIGxlYXZpbmcg
cG9sYXJpdHkgaW52ZXJzaW9uCmRpc2FibGVkIHdoZW4gdGhlIHNlY29uZCBhcmd1bWVudCB3YXMg
bm90IHN1cHBsaWVkLiBUaGlzIGRvZXMgbm90CmNoYW5nZSB0aGUgYmluZGluZyBvciBpbnRyb2R1
Y2UgYSBzdXBwb3J0ZWQgdHdvLWNlbGwgaW50ZXJmYWNlLgoKVGhlIHNhbWUgY2hhbmdlIHJlc3Rv
cmVzIDI1MDBCQVNFLVggY29tbXVuaWNhdGlvbiBvbiB0aGUgYWZmZWN0ZWQKTU9YIHdpdGggbm8g
Q1JDIGVycm9ycy4gQ29sZCBib290cywgcmVib290cyBhbmQgaW50ZXJmYWNlIGRvd24vdXAKY3lj
bGVzIHdlcmUgYWxzbyB0ZXN0ZWQgc3VjY2Vzc2Z1bGx5IG9uIExpbnV4IDYuMTguNTQuCgpGaXhl
czogOTM0MzM3MDgwYzZjICgicGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBB
ZGQgbmF0aXZlIGtlcm5lbCBpbXBsZW1lbnRhdGlvbiIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCkNsb3NlczogaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9pc3N1ZXMvMjQw
NjkKQXNzaXN0ZWQtYnk6IExMTQpTaWduZWQtb2ZmLWJ5OiDFoHTEm3DDoW4gRGFsZWNrw70gPGRh
bGVja3lzdGVwYW5AZ21haWwuY29tPgotLS0KR2l0SHViIENvcGlsb3QgYXNzaXN0ZWQgd2l0aCBj
b21wYXJpbmcgdGhlIHdvcmtpbmcgYW5kIGZhaWxpbmcgbG9ncywKaWRlbnRpZnlpbmcgdGhlIHVu
dXNlZCBhcmd1bWVudCByZWFkLCBwcmVwYXJpbmcgdGhlIGZpeCBhbmQgY2hhbmdlbG9nLAphbmQg
Y2hlY2tpbmcgdGhlIHBhdGNoLiBUaGUgc3VibWl0dGVyIHBlcmZvcm1lZCB0aGUgTU9YIGhhcmR3
YXJlIHRlc3RzLgoKVGhlIHJlcG9ydGVkIGhhcmR3YXJlIHRlc3RzIHVzZWQgT3BlbldydCB3aXRo
IExpbnV4IDYuMTguNTQuIE1haW5saW5lCnJ1bnRpbWUgdGVzdGluZyBoYXMgbm90IGJlZW4gcGVy
Zm9ybWVkLiBBbiBpc29sYXRlZCBBUk02NCBtYWlubGluZSBidWlsZAp3YXMgYXR0ZW1wdGVkIG9u
IG1hY09TIGJ1dCBmYWlsZWQgd2hpbGUgYnVpbGRpbmcgaG9zdCBmaXhkZXAgYmVjYXVzZQp0aGUg
aG9zdCBDbGFuZyBjb3VsZCBub3QgdXNlIC1mdXNlLWxkPWxsZDsgdGhlIGRyaXZlciB3YXMgbm90
IGNvbXBpbGVkLgpBIGhvc3QgQyB0ZXN0IG9mIHRoZSBjaGFuZ2VkIGV4cHJlc3Npb25zIHdpdGgg
cG9pc29uZWQgdW51c2VkIGFyZ3VtZW50CnNsb3RzIHBhc3NlZCwgYXMgZGlkIHN0cmljdCBjaGVj
a3BhdGNoLgoKIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5j
IGIvZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMKaW5kZXggMWQx
ZGIxNzM3NDIyLi5kMTlmMGZhOWJhN2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L21hcnZlbGwv
cGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jCisrKyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12
ZWJ1LWEzNzAwLWNvbXBoeS5jCkBAIC0xMjMyLDggKzEyMzIsOCBAQCBzdGF0aWMgc3RydWN0IHBo
eSAqbXZlYnVfYTM3MDBfY29tcGh5X3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7CiAJfQogCi0JbGFuZS0+aW52ZXJ0X3R4ID0gYXJncy0+YXJnc1sx
XSAmIEJJVCgwKTsKLQlsYW5lLT5pbnZlcnRfcnggPSBhcmdzLT5hcmdzWzFdICYgQklUKDEpOwor
CWxhbmUtPmludmVydF90eCA9IGFyZ3MtPmFyZ3NfY291bnQgPiAxICYmIChhcmdzLT5hcmdzWzFd
ICYgQklUKDApKTsKKwlsYW5lLT5pbnZlcnRfcnggPSBhcmdzLT5hcmdzX2NvdW50ID4gMSAmJiAo
YXJncy0+YXJnc1sxXSAmIEJJVCgxKSk7CiAKIAlyZXR1cm4gcGh5OwogfQoKYmFzZS1jb21taXQ6
IDU1MWM3MjJmNDA4MDk2MTgyMzAwMDFiYWNjZjIxOTE5M2UyMmZjNWEKLS0gCjIuNTQuMCAoQXBw
bGUgR2l0LTE1NykKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
