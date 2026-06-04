Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30357CD6E79
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 18:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k6adBmjqfeplZSL+k0D3atKXggk9kN4/vhkJzuYd5U4=; b=Lsfd27RkpSwSPT
	eIbEz6CJ2NIMogYg4EiZiDuZCxWZieV2iVCNoo+Ql6lPEyauEOzszxVCfmjMFvGVnx+ELnv/Qht3t
	mXss3FoyfS6ecNWGQ9vlU56uasjYZWfAu971H5jIr4oUbWt+GGCaszr4SFvDoIBlrPkxRVoy24Uak
	lFYxb8M8St2EOhc4RLpRccunmgfpSSenSRuQnsIrX710rNalkjGsa7LNugi5EIRCmE5ncGN1TQOym
	0dMFEEaboHLYyZziT7RU9B5yN7FZXiGAqids8+bxFFiV4TC7qYF4oFAPYOAH2wkWpJkr0eb9KLl5a
	7YAu9u1DgCMf29UtoR+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVCYB-0000000H9ue-2AQK;
	Thu, 04 Jun 2026 18:12:15 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVCY8-0000000H9u8-1v0v
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 18:12:14 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-46013161068so542991f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 11:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780596730; x=1781201530; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MBV5F5ZFXu3LplEpSL9jXQmyH1fcjls/VQKnmrV9OCk=;
        b=K4nCB8EErP5uRBDyWXLWWj+1ahLsspHPB2sqcmTR5MOgO6dODk4ARMKtN0Ml2Zy0Da
         ItaMWIbL5M3oCt+AcwWkuB5SGZpUdr7NSHIIhTBo01WsZT1WYrKx1BUEw+gYNR8Hv+rC
         Ol++niH8x/QLqJXZtFZQKacG0Joi52ySp4rFFrAWQmz3XQQkSEOWUwIzTXOhoWqecHnP
         AcTP7at6TQHbG8sJr8re39b6wJh2IFchpOrU9nCksVIZ8B44cTc8T/ascNw0P/qq9CVm
         2tg25s2UG0gGv5TTt+7L5tffYC5qo4dR0+pukRtWOjnR3C5qGDNQo7xQGSGowZbp7MIM
         cObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780596730; x=1781201530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBV5F5ZFXu3LplEpSL9jXQmyH1fcjls/VQKnmrV9OCk=;
        b=bc17J/xVh/hJobY+s2vzYf4032RxFNM8YqV9Z1fw5dNX2XC4Vognqh4CIZosAJVFTf
         cnNL6y4pSFYY8pUf/tXg3xT9d+cJTDnfX1TT2248HNvD1fD4KbICvK+Yo9+va1sG88CQ
         eNtuRLtM3wPxC0f3wOxHC70+EuTlWluUSjDtqcu1B0hsQUqw2ENpjie9Ri/7zx4Po4In
         2ISfFDxQRb9xcPnBRG7Hq9RfmlaIGjKCnm52uxg4BzY159TqtSKw/H43T0uFZwurxW13
         FZK9JGtFDU5i83h2CyWMm4/6oFTyVIi/VZuPOETCgqiLtHeGDvrzfE0GzhnHKDXmtMvz
         TD3g==
X-Forwarded-Encrypted: i=1; AFNElJ9o/ki5HRbWyTOZ0IZLlo3SORIHie1e/DP/u42tPpeqLZkFk9AicbJt7D/8BDSsZjuUJWiLQrF4E2I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaMY7bTxLT5j7xn1YYwukUYwIO+XBpyMSOVfMaQNw0NO4kKP9V
	jYa7duoKjW+qnO3dNw/J6r/oCSKhW3ypHXhz1B9/rdP9Cbhc6Zk92VAI
X-Gm-Gg: Acq92OFQAuvx5GZYxwlaVr1nqOSofH/ugyMlZUKa+ytmNwxH2Yed97X3fM9V92z7cMS
	+NL32x960JiLfNBwMQaFB2Hbn/kkLrZMl6TE7T7sLBw9fsNRa2rGPl9Lu59VOntNI+bx8uuVqZ9
	GytHXvB1RqD2AOnaD1Cvo+kWubSvXDGsISksOrz9y7PFHJtNpgqhSUwGGp/TWFh5DJOmJ5mMzZC
	+ds3ARwT7p97oMfcHyN9kWqXn3P+L43z+av/LVlemMu4b47KDy5HoRJ6ArMm95zTlhD3RlcAjdS
	4vsrrHwVCRBuDJRk/CpE5jSRxq2dTE86REViLAdKEc6r6qnedk6QTsY2EQTWqywBim7u1NAqR5H
	G50D9WWM3gx2rM5WI0mbRlaZfSY23+p2an6EfnNGEludnKHa8o3icuGxE2UGREB796LC+oWtpj2
	JDddxF6/MWb9mxIYAzuvEDKz5BNZpJ9aZz9mseRdKzNFCGLos9LJPPjGIuH9QzO81UnBrx9py2O
	CuDyBL/xtNfFng68/byJIKM5AzZ
X-Received: by 2002:a05:600c:8b38:b0:48f:d5b8:5b07 with SMTP id 5b1f17b1804b1-490b5e51b8amr147464915e9.20.1780596729771;
        Thu, 04 Jun 2026 11:12:09 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490c159f51asm4304115e9.1.2026.06.04.11.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 11:12:09 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: netdev@vger.kernel.org
Cc: kuba@kernel.org,
	andrew@lunn.ch,
	hkallweit1@gmail.com,
	linux@armlinux.org.uk,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net-next] net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery
Date: Thu,  4 Jun 2026 20:12:06 +0200
Message-ID: <20260604181207.17468-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_111212_549305_44548D4B 
X-CRM114-Status: GOOD (  17.54  )
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

Y29tbWl0IDhmZTEyNTg5MmY0MCAoIm5ldDogcGh5OiBzZnA6IHByb2JlIGZvciBSb2xsQmFsbCBJ
MkMtdG8tTURJTwpicmlkZ2UgaW4gbWRpby1pMmMiKSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lvbjog
Zm9yIFNGUCBtb2R1bGVzIGluc2VydGVkCmJlZm9yZSBzeXN0ZW0gYm9vdCwgdGhlIFJvbGxCYWxs
IEkyQy10by1NRElPIGJyaWRnZSBpcyBub3QgeWV0IHJlYWR5IHRvCnJlc3BvbmQgdG8gQ01EX1JF
QUQvQ01EX0RPTkUgY3ljbGVzIHdoZW4gc2ZwX3NtX2FkZF9tZGlvX2J1cygpIHJ1bnMuClRoZSAy
MDAgbXMgcHJvYmUgdGltZXMgb3V0LCBpMmNfbWlpX3Byb2JlX3JvbGxiYWxsKCkgcmV0dXJucyAt
RU5PREVWLAphbmQgc2ZwX3NtX2FkZF9tZGlvX2J1cygpIHNldHMgbWRpb19wcm90b2NvbCA9IE1E
SU9fSTJDX05PTkUuICBCeSB0aGUKdGltZSBzZnBfc21fcHJvYmVfZm9yX3BoeSgpIHJ1bnMgKHVw
IHRvIH4xNyBzIGxhdGVyIG9uIGFmZmVjdGVkCmhhcmR3YXJlKSwgdGhlIGJyaWRnZSBpcyBmdWxs
eSBpbml0aWFsaXplZCDigJQgYnV0IFBIWSBwcm9iaW5nIGlzIHNraXBwZWQKYmVjYXVzZSB0aGUg
cHJvdG9jb2wgaGFzIGFscmVhZHkgYmVlbiBjaGFuZ2VkIHRvIE5PTkUuCgpNb3ZlIHRoZSBwcm9i
ZSBmcm9tIGkyY19taWlfaW5pdF9yb2xsYmFsbCgpIOKAlCBjYWxsZWQgYXQgYnVzLWNyZWF0aW9u
CnRpbWUg4oCUIHRvIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCkgaW4gc2ZwLmMsIHdoZXJlIGl0IHJ1
bnMgYWZ0ZXIgdGhlIFNGUApzdGF0ZSBtYWNoaW5lJ3MgbW9kdWxlIGluaXRpYWxpemF0aW9uIGRl
bGF5cy4gIEV4cG9ydCB0aGUgcHJvYmUgZnVuY3Rpb24KYXMgbWRpb19pMmNfcHJvYmVfcm9sbGJh
bGwoKSBzbyBzZnAuYyBjYW4gY2FsbCBpdC4KCkZvciBSVEw4MjYxQkUtYmFzZWQgbW9kdWxlczog
dGhlIHByb2JlIGNvcnJlY3RseSByZXR1cm5zIC1FTk9ERVYgYXQgUEhZCmRpc2NvdmVyeSB0aW1l
LCBjYXVzaW5nIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCkgdG8gZGVzdHJveSB0aGUgTURJTyBidXMK
YW5kIHNldCBNRElPX0kyQ19OT05FIOKAlCBlbGltaW5hdGluZyB0aGUgNSsgbWludXRlIFBIWSBw
cm9iZSByZXRyeSBsb29wLgoKRm9yIGdlbnVpbmUgUm9sbEJhbGwgbW9kdWxlcyBpbnNlcnRlZCBi
ZWZvcmUgYm9vdCAoZS5nLiBGTFlQUk8KU0ZQLTEwR1QtQ1MtMzBNIHdpdGggQXF1YW50aWEgQVFS
MTEzQyk6IHRoZSBwcm9iZSBub3cgcnVucyBhZnRlcgppbml0aWFsaXphdGlvbiBpcyBjb21wbGV0
ZSBhbmQgY29ycmVjdGx5IHJldHVybnMgMCDigJQgUEhZIGRldGVjdGlvbgpwcm9jZWVkcyBub3Jt
YWxseS4KClJlcG9ydGVkLWJ5OiBBbGVrc2FuZGVyIEJhamtvd3NraSA8b2xlazJAd3AucGw+CkZp
eGVzOiA4ZmUxMjU4OTJmNDAgKCJuZXQ6IHBoeTogc2ZwOiBwcm9iZSBmb3IgUm9sbEJhbGwgSTJD
LXRvLU1ESU8gYnJpZGdlIGluIG1kaW8taTJjIikKU2lnbmVkLW9mZi1ieTogUGV0ciBXb3puaWFr
IDxwZXRyLndvem5pYWtAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvbmV0L21kaW8vbWRpby1pMmMu
YyAgIHwgMTggKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9waHkvc2ZwLmMgICAgICAg
ICB8IDE4ICsrKysrKysrKysrKy0tLS0tLQogaW5jbHVkZS9saW51eC9tZGlvL21kaW8taTJjLmgg
fCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L21kaW8vbWRpby1pMmMuYyBiL2RyaXZlcnMvbmV0
L21kaW8vbWRpby1pMmMuYwotLS0gYS9kcml2ZXJzL25ldC9tZGlvL21kaW8taTJjLmMKKysrIGIv
ZHJpdmVycy9uZXQvbWRpby9tZGlvLWkyYy5jCkBAIC0zNTIsNyArMzUyLDcgQEAKIAlyZXR1cm4g
MDsKIH0KCi1zdGF0aWMgaW50IGkyY19taWlfcHJvYmVfcm9sbGJhbGwoc3RydWN0IGkyY19hZGFw
dGVyICppMmMpCitpbnQgbWRpb19pMmNfcHJvYmVfcm9sbGJhbGwoc3RydWN0IGkyY19hZGFwdGVy
ICppMmMpCiB7CiAJdTggZGF0YV9idWZbXSA9IHsgUk9MTEJBTExfREFUQV9BRERSLCAweDAxLCAw
eDAwLCAweDAwIH07CiAJdTggY21kX2J1ZltdICA9IHsgUk9MTEJBTExfQ01EX0FERFIsIFJPTExC
QUxMX0NNRF9SRUFEIH07CkBAIC0zOTcsOSArMzk3LDExIEBACgogCXJldHVybiAtRU5PREVWOwog
fQorRVhQT1JUX1NZTUJPTF9HUEwobWRpb19pMmNfcHJvYmVfcm9sbGJhbGwpOwoKIHN0YXRpYyBp
bnQgaTJjX21paV9pbml0X3JvbGxiYWxsKHN0cnVjdCBpMmNfYWRhcHRlciAqaTJjKQogeworCS8q
IFNlbmQgdGhlIFJvbGxCYWxsIHVubG9jayBwYXNzd29yZDsgYnJpZGdlIHByZXNlbmNlIGlzIHZl
cmlmaWVkCisJICogbGF0ZXIsIGluIHNmcF9zbV9wcm9iZV9mb3JfcGh5KCksIGFmdGVyIG1vZHVs
ZSBpbml0aWFsaXphdGlvbi4gKi8KIAlzdHJ1Y3QgaTJjX21zZyBtc2c7CiAJdTggcHdbNV07CiAJ
aW50IHJldDsKQEAgLTQxOSw3ICs0MjEsNyBAQAogCWlmIChyZXQgIT0gMSkKIAkJcmV0dXJuIC1F
SU87CgotCXJldHVybiBpMmNfbWlpX3Byb2JlX3JvbGxiYWxsKGkyYyk7CisJcmV0dXJuIDA7CiB9
Cgogc3RydWN0IG1paV9idXMgKm1kaW9faTJjX2FsbG9jKHN0cnVjdCBkZXZpY2UgKnBhcmVudCwg
c3RydWN0IGkyY19hZGFwdGVyICppMmMsCkBAIC00NDQsMTIgKzQ0Niw4IEBACiAJY2FzZSBNRElP
X0kyQ19ST0xMQkFMTDoKIAkJcmV0ID0gaTJjX21paV9pbml0X3JvbGxiYWxsKGkyYyk7CiAJCWlm
IChyZXQgPCAwKSB7Ci0JCQlpZiAocmV0ICE9IC1FTk9ERVYpCi0JCQkJZGV2X2VycihwYXJlbnQs
Ci0JCQkJCSJDYW5ub3QgaW5pdGlhbGl6ZSBSb2xsQmFsbCBNRElPIEkyQyBwcm90b2NvbDogJWRc
biIsCi0JCQkJCXJldCk7Ci0JCQkvKiAtRU5PREVWIHByb3BhZ2F0ZXMgdG8gY2FsbGVyOiBubyBi
cmlkZ2UgcHJlc2VudCwKLQkJCSAqIFBIWSBwcm9iaW5nIHNob3VsZCBiZSBza2lwcGVkIGZvciB0
aGlzIG1vZHVsZS4gKi8KKwkJCWRldl9lcnIocGFyZW50LAorCQkJCSJDYW5ub3QgaW5pdGlhbGl6
ZSBSb2xsQmFsbCBNRElPIEkyQyBwcm90b2NvbDogJWRcbiIsCisJCQkJcmV0KTsKIAkJCW1kaW9i
dXNfZnJlZShtaWkpOwogCQkJcmV0dXJuIEVSUl9QVFIocmV0KTsKIAkJfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvcGh5L3NmcC5jIGIvZHJpdmVycy9uZXQvcGh5L3NmcC5jCi0tLSBhL2RyaXZl
cnMvbmV0L3BoeS9zZnAuYworKysgYi9kcml2ZXJzL25ldC9waHkvc2ZwLmMKQEAgLTIwMjgsMTcg
KzIwMjgsOCBAQCBzdGF0aWMgaW50IHNmcF9zbV9hZGRfbWRpb19idXMoc3RydWN0IHNmcCAqc2Zw
KQogCWRldl9pbmZvKHNmcC0+ZGV2LCAicHJvYmluZyBwaHkgZGV2aWNlIHRocm91Z2ggdGhlIFsl
c10gcHJvdG9jb2xcbiIsCiAJCSBtZGlvX2kyY19wcm90b190eXBlKHNmcC0+bWRpb19wcm90b2Nv
bCkpOwoKLQlpbnQgcmV0OwotCiAJaWYgKHNmcC0+bWRpb19wcm90b2NvbCA9PSBNRElPX0kyQ19O
T05FKQogCQlyZXR1cm4gMDsKCi0JcmV0ID0gc2ZwX2kyY19tZGlvYnVzX2NyZWF0ZShzZnApOwot
CWlmIChyZXQgPT0gLUVOT0RFVikgewotCQkvKiBQcm9iZSBjb25maXJtZWQgbm8gYnJpZGdlIHBy
ZXNlbnQ7IHNraXAgUEhZIGRpc2NvdmVyeS4gKi8KLQkJc2ZwLT5tZGlvX3Byb3RvY29sID0gTURJ
T19JMkNfTk9ORTsKLQkJcmV0dXJuIDA7Ci0JfQotCXJldHVybiByZXQ7CisJcmV0dXJuIHNmcF9p
MmNfbWRpb2J1c19jcmVhdGUoc2ZwKTsKIH0KCiAvKiBQcm9iZSBhIFNGUCBmb3IgYSBQSFkgZGV2
aWNlIGlmIHRoZSBtb2R1bGUgc3VwcG9ydHMgY29wcGVyIC0gdGhlIFBIWQpAQCAtMjA1OCw4ICsy
MDQ5LDIzIEBAIHN0YXRpYyBpbnQgc2ZwX3NtX3Byb2JlX2Zvcl9waHkoc3RydWN0IHNmcCAqc2Zw
KQoKIAljYXNlIE1ESU9fSTJDX1JPTExCQUxMOgotCQllcnIgPSBzZnBfc21fcHJvYmVfcGh5KHNm
cCwgU0ZQX1BIWV9BRERSX1JPTExCQUxMLCB0cnVlKTsKKwkJLyogUHJvYmUgaGVyZSwgYWZ0ZXIg
bW9kdWxlIGluaXRpYWxpemF0aW9uIGRlbGF5cywgc28gdGhhdAorCQkgKiBnZW51aW5lIFJvbGxC
YWxsIGJyaWRnZXMgaGF2ZSBoYWQgdGltZSB0byBzdGFydCB1cC4KKwkJICogTW9kdWxlcyB3aXRo
b3V0IGEgYnJpZGdlIChlLmcuIFJUTDgyNjFCRSkgcmV0dXJuIC1FTk9ERVYuICovCisJCWVyciA9
IG1kaW9faTJjX3Byb2JlX3JvbGxiYWxsKHNmcC0+aTJjKTsKKwkJaWYgKGVyciA9PSAtRU5PREVW
KSB7CisJCQlzZnBfaTJjX21kaW9idXNfZGVzdHJveShzZnApOworCQkJc2ZwLT5tZGlvX3Byb3Rv
Y29sID0gTURJT19JMkNfTk9ORTsKKwkJCWJyZWFrOworCQl9CisJCWlmICghZXJyKQorCQkJZXJy
ID0gc2ZwX3NtX3Byb2JlX3BoeShzZnAsIFNGUF9QSFlfQUREUl9ST0xMQkFMTCwgdHJ1ZSk7CiAJ
CWJyZWFrOwogCX0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRpby9tZGlvLWkyYy5oIGIv
aW5jbHVkZS9saW51eC9tZGlvL21kaW8taTJjLmgKLS0tIGEvaW5jbHVkZS9saW51eC9tZGlvL21k
aW8taTJjLmgKKysrIGIvaW5jbHVkZS9saW51eC9tZGlvL21kaW8taTJjLmgKQEAgLTMzLDUgKzMz
LDYgQEAKCiBzdHJ1Y3QgbWlpX2J1cyAqbWRpb19pMmNfYWxsb2Moc3RydWN0IGRldmljZSAqcGFy
ZW50LCBzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmkyYywKIAkJCSAgICAgICBlbnVtIG1kaW9faTJjX3By
b3RvIHByb3RvY29sKTsKK2ludCBtZGlvX2kyY19wcm9iZV9yb2xsYmFsbChzdHJ1Y3QgaTJjX2Fk
YXB0ZXIgKmkyYyk7CgogI2VuZGlmCi0tCjIuNTEuMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
