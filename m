Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D55DC9830E
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 05:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alTBdKHQNduIE1V8WfW0UjlGlj4+9ie+2daSN8Yaskk=; b=bOPMtnG1M6KGMl
	jcfvPC+nEZDg+kMO7iy1ESQCswtsW+62VkPItLkz2dLOrwAShf1XlNZs07RTxZ2dRb0m7/Rrpfszi
	iF+5oCl+zXMHiFvQK1gJzZJ55HRCUDKsJ8aV88We2IIbL/3MJ4ZeenDYmoiqilWlci5MblZDR/geE
	kd/vdkwUxGfBy3ZywGu0p4eDgzOw7c6YPcZWRH75S4F129HOknHNwZ8b5JCElW/aGKiEZErPatjWT
	iVVOZ3hMc8JOcR9TdsLxsahT+pn1cjadjT8RNqJJzUnPSiOo3cd1S8lRto8fsvdn1vke4DdZF3RwL
	lOhsj4NvncVSljYYtkyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAhC7-0000000G1du-3OJe;
	Sun, 27 Sep 2026 05:12:59 +0000
Received: from mail-dy2-x10.google.com ([2607:f8b0:4864:36::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAhC5-0000000G1dT-1FDw
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 05:12:58 +0000
Received: by mail-dy2-x10.google.com with SMTP id 5a478bee46e88-328664b7528so1944242eec.2
        for <linux-phy@lists.infradead.org>; Sat, 26 Sep 2026 22:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790485976; x=1791090776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ECppgFtXW9ikEAxGxgiMpMcCWso0DWODm43LTb+Hvi4=;
        b=q2eEpC99H1z2GXwTCuLcaI9Ul6haG/YaJHhKQiYRqg9XGiXyKank88qR1tN5li54RA
         8UUCYiL9BDnmD+u4s6wKHkTRqmEpfNr65fkFSFk4ssngdGoens5CU+Chk8dMlJB75voH
         7cApRvxPY9zZsOajCs3Mvhc+AvVo2f3h5DkAr6j+2ru0lVOskmM08pIR6OfZgC6FCZTu
         hQAIA1M5Fgai9+7yUVWsq3Ss4e6gZt71IhTlbzQw9gaON/2RsnL24T3U84wBl9U8eA8i
         eAlu56KCl+NyPoBkBcJuHNLCYybMA6+0IYKZLJFMBA1FdMK1a2/xKo4y1fTWTXqOdf+S
         CLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790485976; x=1791090776;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ECppgFtXW9ikEAxGxgiMpMcCWso0DWODm43LTb+Hvi4=;
        b=jRchNaFA1A/hBV+ivncJiAGJkAelhy727Hcszvm9fVo6NheygsuMKCISdqyxT+Be99
         /BTvBh01qdVsv0rVkssADkHfZWh1mP5ZvEb7LZUoPx2Sena9naqez+JCpVNKVqOPwcYK
         p5YSG4ErRb+25JgU+300Fb6RN92dx3az5GwrBR2Vqq56GJgMCQqj/+ytZ5gxJ1ReOcbq
         sDzw0erGUSNOxcgQU4DmQPt9fi87k3CMFPSai6LbXAd3924u5bskQE/YMhJX13trQq7y
         JnfeMNqb4iuXjG9oBNvL09K2E033HWS9LZ834lIZQPQY2e6VdqPPBts8oY9g4DHxkKyl
         Xbmw==
X-Forwarded-Encrypted: i=1; AKwUvBzicujAjtODD+dTWBVt4aZ+yMjVIpn65Za8dElQA0OUi8w/Q1GT3/ZLVc8duo8zVrl8ztZ3lVaXxNY=@lists.infradead.org
X-Gm-Message-State: AFuF++kCdXB5nDPESTdcdr9QTQ49P5cxpex60Q3iJcGYf6z9wye9L70B
	VkIKDOKXc4A0LV+5M0diMYMmRy/VA38qJus09lQa3pa6L8I4aeEhhTxMH5wHavBsh2qnMQ==
X-Gm-Gg: AYBFou2z1GrcqjovEU9ZyzU4CqnlKPGP0KnPzozbdAM7Atc0bYGfcoCA6rGKdfWLaUJ
	ndotJUIBYOzEvvG4kG8H7oa+mWb+mpBJQI0b3ReVAKXkOMZryR4YTbyhm3FrOY0ahxI9mewxM9m
	sENSXpTUXeEMHAShXdBUJQCMA+VT7nZZAuG57qzaIySTuMF9oko38H0GzvHcmP8MRfe6dOtnwEr
	+rgpithU4hqUUOzom7oNKytvHRX8Z88h9F7JoYh+7G9jfCCLCbx+WCKJ3qj6FUB8UMwuWuFB6Pb
	8ZMMaBVotPYcBKP5oGpXXCsSpekhxzpBlhxm991Xqkv96+ntKMSTGTKmsRTN6IK3xeUNMX3o9Bi
	bsJNnXfGC6uqOADMK0pIdgRpIq+cePmnD1E/o+FtykgCiWRVcvVdsCnejAMRSTyiSfdeksmHxDS
	LnPdrbpflGJ4ZnyuVdF0MLlDkX8H2GOvZMSjfOHnRJbC2niMFEFiPGSNI97SRhTKF+KdeM/26Wr
	zfmr+P6Hce4dO97xfob5S419gESAOx8BRd+cq24YNYhMdft/jUa1Bkr4mCtKmej4AijJr4611hz
	QOcrvepWxA8+IsRutATYCwQYctju+tNbD7RDUdKcnEHsOGs2FLwVAtq75XA=
X-Received: by 2002:a05:7301:db81:b0:32e:e250:85ef with SMTP id 5a478bee46e88-3426fcc9969mr4475781eec.1.1790485975580;
        Sat, 26 Sep 2026 22:12:55 -0700 (PDT)
Received: from spider.bream-herring.ts.net ([103.6.151.236])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-342c9c245a7sm10963877eec.11.2026.09.26.22.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2026 22:12:55 -0700 (PDT)
From: Matthias Goergens <matthias.goergens@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH] MAINTAINERS: name the phy/linux-phy next branch
Date: Sun, 27 Sep 2026 13:12:52 +0800
Message-ID: <20260927051252.2751812-1-matthias.goergens@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260926_221257_341391_85753832 
X-CRM114-Status: GOOD (  10.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The T: entry for GENERIC PHY FRAMEWORK names phy/linux-phy without a
branch.  The repository's HEAD points to branch master, which mainline
already contains.  linux-next merges the next branch of this repository
(Next/Trees).  Name that branch in the entry.

Signed-off-by: Matthias Goergens <matthias.goergens@gmail.com>
---
This is part of a cleanup of all T: entries whose repository HEAD is
not where development happens: one patch per repository, sent in small
batches.  The plan is at [1], and why it goes out in batches at [2].

[1] https://lore.kernel.org/all/20260924033200.3615554-1-matthias.goergens@gmail.com/
[2] https://lore.kernel.org/all/20260924101844.2403008-1-matthias.goergens@gmail.com/

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 140eafcbbd78..953ca10c3697 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10999,7 +10999,7 @@ R:	Manivannan Sadhasivam <mani@kernel.org>
 L:	linux-phy@lists.infradead.org
 S:	Supported
 Q:	https://patchwork.kernel.org/project/linux-phy/list/
-T:	git git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git next
 F:	Documentation/devicetree/bindings/phy/
 F:	drivers/phy/
 F:	include/dt-bindings/phy/

base-commit: 62f4c998b297cf233997a2b4cd6fc2d2df0319c9
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
