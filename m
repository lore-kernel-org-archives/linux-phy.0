Return-Path: <SRS0=ZRRf=JF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BFA4C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 01:29:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8168C61168
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 01:29:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8168C61168
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qvutautQImUD1CLjJnr0T6+JOQ8J+f1oWED30TwCq+8=; b=Y55XewCs8MCYXnRUQZAEPneag8
	1fsjyNEIMGbNqVLvumWAfGloueKCBnd+5L5qmQ+j5ehbyx/v4Pi0VtG/9haMyaWs6kqgU/TtMvrxt
	796kiKPihv64vXdvPrNHHiWZBWxdSrR7A4WsKSYoEn511af9mpbeHE9MTy5sDi2Sb8UHnSCnGxDW6
	CMdUWxGK4dgTA3WuKRYLHhIcaNsyKFTNLBAjPDD6vezVWu6bG+GtNGNEP6G/JBwB0w2zOwSf3jQB/
	xyOi2DXZa2Uc2XtG+TPtU6tuVsSKrpPZCxhXFvCYZOnxrFwznN0kLToRECGA0B7/j9BMkcxMpMxtV
	zIqkDIPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUJU1-006UR6-M7; Thu, 08 Apr 2021 01:29:21 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUJTx-006UMk-Lr
 for linux-phy@lists.infradead.org; Thu, 08 Apr 2021 01:29:19 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FG3WP5kLKzpWN7;
 Thu,  8 Apr 2021 09:26:25 +0800 (CST)
Received: from huawei.com (10.175.113.32) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.498.0; Thu, 8 Apr 2021
 09:29:02 +0800
From: Shixin Liu <liushixin2@huawei.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, "Shixin
 Liu" <liushixin2@huawei.com>
Subject: [PATCH -next] phy: ti: j721e-wiz: Add missing include linux/slab.h
Date: Thu, 8 Apr 2021 09:28:29 +0800
Message-ID: <20210408012829.432938-1-liushixin2@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.32]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_022917_986067_DC35C13A 
X-CRM114-Status: UNSURE (   5.91  )
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

V2hlbiBjb21waWxpbmcgd2l0aCBDT05GSUdfUEhZX0o3MjFFX1dJWiwgSHVsayBSb2JvdCByZXBv
cnRlZDoKCmRyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYzogSW4gZnVuY3Rpb24g4oCYd2l6
X211eF9jbGtfcmVnaXN0ZXLigJk6CmRyaXZlcnMvcGh5L3RpL3BoeS1qNzIxZS13aXouYzo2NTk6
MTc6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhremFsbG9j4oCZ
OyBkaWQgeW91IG1lYW4g4oCYdnphbGxvY+KAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24t
ZGVjbGFyYXRpb25dCiAgNjU5IHwgIHBhcmVudF9uYW1lcyA9IGt6YWxsb2MoKHNpemVvZihjaGFy
ICopICogbnVtX3BhcmVudHMpLCBHRlBfS0VSTkVMKTsKICAgICAgfCAgICAgICAgICAgICAgICAg
Xn5+fn5+fgogICAgICB8ICAgICAgICAgICAgICAgICB2emFsbG9jCmRyaXZlcnMvcGh5L3RpL3Bo
eS1qNzIxZS13aXouYzo2NTk6MTU6IHdhcm5pbmc6IGFzc2lnbm1lbnQgdG8g4oCYY29uc3QgY2hh
ciAqKuKAmSBmcm9tIOKAmGludOKAmSBtYWtlcyBwb2ludGVyIGZyb20gaW50ZWdlciB3aXRob3V0
IGEgY2FzdCBbLVdpbnQtY29udmVyc2lvbl0KICA2NTkgfCAgcGFyZW50X25hbWVzID0ga3phbGxv
Yygoc2l6ZW9mKGNoYXIgKikgKiBudW1fcGFyZW50cyksIEdGUF9LRVJORUwpOwogICAgICB8ICAg
ICAgICAgICAgICAgXgpkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmM6Njk3OjI6IGVycm9y
OiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhrZnJlZeKAmTsgZGlkIHlvdSBt
ZWFuIOKAmHZmcmVl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0K
ICA2OTcgfCAga2ZyZWUocGFyZW50X25hbWVzKTsKICAgICAgfCAgXn5+fn4KICAgICAgfCAgdmZy
ZQoKRml4ZXM6IDA0MGNiZTc2ODczMSAoInBoeTogdGk6IGo3MjFlLXdpejogTW9kZWwgdGhlIGlu
dGVybmFsIGNsb2NrcyB3aXRob3V0IGRldmljZSB0cmVlIGlucHV0IikKUmVwb3J0ZWQtYnk6IEh1
bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgpTaWduZWQtb2ZmLWJ5OiBTaGl4aW4gTGl1IDxs
aXVzaGl4aW4yQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5j
IHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgYi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6
LmMKaW5kZXggMmIzNTQ2ODBhMjcyLi5hYjI4ZmIyZTAxZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGh5L3RpL3BoeS1qNzIxZS13aXouYworKysgYi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6
LmMKQEAgLTgsNiArOCw3IEBACiAKICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9waHkvcGh5Lmg+CiAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3BoeS10aS5oPgorI2luY2x1ZGUgPGxpbnV4L3NsYWIu
aD4KICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIu
aD4KICNpbmNsdWRlIDxsaW51eC9ncGlvLmg+Ci0tIAoyLjI1LjEKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
