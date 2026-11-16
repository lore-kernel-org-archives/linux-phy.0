Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A613D606A338
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pDKFZvp7;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Zc7kL8HQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GRFs/Ahb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hW6niclgO5G/qm8Bu4kDWY+iNm3VH7OC9vmfXS+NWRM=; b=pDKFZvp7dpPSXTNRzbl7pYXSW5
	HdB/3L1QcIIv4lbhNbGVe+MdCKrB8mdIWvr6Qg8egL1mqPDCVZ8SnoWqAC5/qPIyukTpGuUpUbKU5
	vZsnYLLITCdi7ldzpPQM39gms1IX3xG4WJMPqjNxw90/+Rv74aukR3Eg13aEcJ5eiVTUdUnaBLSHR
	a7M5s05sCXPnUVR6DKcU5lZFie3HkR7ceXdUzE7tdfeW4TbnYPvflhg9nEn3a2DHfgt3t+xl5ndun
	U8i7ggD3DxdEnxCHQeianOSbubxhM/fTBfJTrFIZWEpgQiRsU8KGHBN8UmYJ5AGkRXyQKpSjhFsYf
	xk+TmWnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwb7-00000002a9a-1jC0;
	Mon, 16 Nov 2026 13:18:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwb4-00000002a93-3u1n
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:18:12 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC1UHM1103192
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v7E6DqGo000I7uPq00z0emYDzpAMFMtfVm3oUlX4g4c=; b=Zc7kL8HQ1JDu3LsG
	qhLcwxYLryxLs3hRcdFlehR+VbQl9CdHfnp7kAXQI8M6/BOF2h1hGQfrYEC3Qiby
	jpPgbBjyxs7EnWcuyBK6S6qrFOqIJBiIuQLjHArQisBn3EsjgDF99UZFcqtDfdHh
	5eiYdPGqq99JWMmo9DdUrRui4hgafPHQFT5+om0TDMobDxg7W1gMoz4g4XLHagdp
	myd0A2MCOeydg1vO5y71eLfdAqfRomtjk15LKznV/8UaiAeNjEkuhl6/pYEDzHZs
	xxIIek1Xn9oBCWHhRZw44OPVAtgKvQOMTqLSP/MpKHkWGXh/cUdtQi4ifxDnobgp
	3DnK9w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j0003gkk6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93f1f2fafeaso459617385a.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835089; x=1795439889; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v7E6DqGo000I7uPq00z0emYDzpAMFMtfVm3oUlX4g4c=;
        b=GRFs/AhbadXsJwMu6XZdtPYRqpyh4Ka0D2UOS0viqLggfLnW+xRDxd1+YdOaC8yyZ0
         pHib69pskIJOYpB/9CeFgJFjtxz9aFPAMR/WDjnHjdwCU0E/d3imD/lUrPUjpWE9SGD8
         w7re45U95Q9px2UVEDzEHCL97J/F0NsDysYkP3ONuFYMg8dpHt33gHW0pcccA3Qar3Jp
         TiFPPIXAqDZWvdhQTiUjSmgsxjC3F1AZcWGP4mnr2+4Znspe7ngpao/YjOQ9XcCfUxav
         j/Bp32FJWUN4vo1UQA54PxeuLIIVDW4BNNvlDnDm74dN2X1GBkmiqDOmouuwFpHrJs3p
         EjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835089; x=1795439889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v7E6DqGo000I7uPq00z0emYDzpAMFMtfVm3oUlX4g4c=;
        b=KQktkAJFy/5eGuYVyqSmFqtybieVawWBPkFxhJoO3SjxNAKdMxY0VLTnfZQ75KNJNz
         c39r1ImSiF9Ut6YQw5mWmvyKe894TfVb5crvmMWT5RK6z+AxE+wjBtMfT5VrxaqSKpHw
         8bQogpOkM1tUniUNRzdBMt0D5u1enlNeH42BhRd8QHMu3e7txDEXXX0fdc0MJnsoUWCG
         1+4PRDJrgfhakWDxznx5ZIZAzsb9tst2KLfnmX2r7/qj55AYODzBnnFK04icZarMkLiu
         P7FMvu37cuVTlaMVYlelJ2B2IDujxWeKpr2lSR+L83EyoTWTWNECTT9WIJBfE/cI9CAP
         et4Q==
X-Forwarded-Encrypted: i=1; AL+hErF2aedmnuwJfFHJLfyiIhyw1XwUn26Mu/8zIA3q4lHhutdtnixZk4//RhSCcEtEwuSUB+fBORKnm78=@lists.infradead.org
X-Gm-Message-State: APuU4Z8TFZitHgfjyJ3f0ZlexW7bKLlpO563Svg+B19imwQn4ToZehc5
	W4eJWAuo4CPmW7rlKVTvZQlhWVtlOJJQ+6Em6LHHbKpHw/mnsawH6NkEux/SYNF3bgj/1pX4/Iw
	ooJ2LPKxS9nU3kqeGBnhH3w40V7U5cjbtGCIeZR97GHWP6HtuSkhBLEgqQhK0YDZneoTT
X-Gm-Gg: AYBFou0d/F1f/YtyLplVN7dfpYb7/tCnhJnusu+5Pgkgdgpw+YVvFg47XOdN9y7x54I
	Jnrg32WGO2YlmJMeyT4GPGEOxo6AbGmOFEHf7T2XH0My6qOQpwqzuZtIHSp599tdyRGzViVicK2
	6/2ARbHSjLrbtgVY7liTInmkKCtFvUmUdIaTJURqMqnhC+wTKNjunv2rFgN6UBSmVBRfg3VpE75
	6x7t261guz2/y3bM6HY0O/q5LM0kxKLLb5V2HPuIjwZtgo7lf69lLm7uQXK8TEfVZRJOdDwKi+S
	sq+0jb4OsJU1XdFIqalD2yrn/6EkBIiJBWw9Jb2zYnzmVcnjVENsqdwucmVJqnyxx+/mHWFdFVe
	s6gaJbDym42AD51e6NymP+tBYqOOmEqmqyBY0EPPR5h55c3Hu5lqSLariu0OsDpxooDz0YmhE4X
	OM
X-Received: by 2002:a05:620a:2949:b0:949:7b7e:c101 with SMTP id af79cd13be357-9497b7ec67cmr478585185a.6.1794835088839;
        Mon, 16 Nov 2026 05:18:08 -0800 (PST)
X-Received: by 2002:a05:620a:2949:b0:949:7b7e:c101 with SMTP id af79cd13be357-9497b7ec67cmr478577185a.6.1794835088123;
        Mon, 16 Nov 2026 05:18:08 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:18:07 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:45 +0530
Subject: [PATCH v3 06/11] drm/msm/dpu: Fix DSI tear interrupts broken by
 adding INTF_9 and INTF_10
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-6-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=3056;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=tNJZcT1SgyiVCTR5tI3Rgit0As7OaoMsLm8aGW6FkJY=;
 b=K2WAePHAK5sxP8sTbvcHlOZbYHt25AZY6NwjI0xtAg7tOCOGfYh4hTYpP5BPWCh0oqJ1n0I7K
 MMTczlWpUd6AYrAkk6G6wJxGt1o+x4PoOqwoy4cRnsnQMZaKfTKVwAC
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: iSBSUy_UYH5cIyaWGTuDqKOsl_RBaDYC
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX+sG04xhNGebU
 O2VRySSRDnpsO3UgRpA6L5knbtpGCMNiMDsSvPy6JeXM7LO5q9k6PgoieyELPgVaqLzpRrjwrIt
 CqelNnG2sDfacuavn9DWDmak929Ov4k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX7Dk1oFG4C1r1
 3fl4M411tw2Im28YgSGe7ESmX4NgGjNm5ZNSdiTREEimXqMTNxqewUTySc+uhZVYwdpu2RMaauI
 lN8QHb3+Opmx5T/eyZWZuPH+PsN4NoJkZATIaDNRxn2Sjfvlzm0SuLGa8ZPyQ6dI47gpz30d4s+
 G33+A45I6xhKTDuQfYR+Vyr0bvGAwjHMCy7llszc8Ct9eRPFtjidDlxnBByvArV75JkLonB+Dhf
 IcEr8MNZUrgrR86pzdsdGESnEEswAEPIvhEglpVCZGOfIkJVXdmKhX0Nm/5t80gYDQJDDHmOjMB
 FNFNd8jmqZumqbiu86g6ZHGvR7KjHKbm9pVnv4W+H3heCsY0KzSOq2f0wbURY9ivynmmBrKKCg/
 bSTdB/rXrjlMeil/vaZS7Xn/t9N1xW0cbxQ5UGGAOlXBiO+Xe+T5EFgpo1qLujZFX/SmGSpO2B/
 Jr82Ynzba7R5QHyXCmA==
X-Authority-Analysis: v=2.4 cv=Z4N5j3RA c=1 sm=1 tr=0 ts=6afb0291 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=QKV3EQzOLTW8gb8NrR8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: iSBSUy_UYH5cIyaWGTuDqKOsl_RBaDYC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051811_081466_9C6F5091 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Tm9yZCByZXF1aXJlcyBJTlRGXzkgYW5kIElOVEZfMTAuIEhvd2V2ZXIsIGVudW0gZHB1X2h3X2lu
dHJfcmVnIHJlbGllcwpvbiBhbGwgTURQX0lOVEZuX0lOVFIgZW50cmllcyBiZWluZyBzZXF1ZW50
aWFsIOKAlCBNRFBfSU5URm5fSU5UUigpIG1hY3JvCmNvbXB1dGVzIHRoZSBpbnRlcnJ1cHQgaW5k
ZXggYXMgTURQX0lOVEYwX0lOVFIgKyAoaW50ZiAtIElOVEZfMCkuCkFwcGVuZGluZyBJTlRGXzkg
YW5kIElOVEZfMTAgYWZ0ZXIgdGhlIHRlYXIgZW50cmllcyB3b3VsZCBicmVhayB0aGlzCmFzc3Vt
cHRpb24sIGNhdXNpbmcgRFNJIHRlYXIgaW50ZXJydXB0cyBvbiBleGlzdGluZyBwbGF0Zm9ybXMg
dG8gbWFwIHRvCndyb25nIGludGVycnVwdCByZWdpc3RlcnMuCgpGaXggdGhpcyBieSBpbnNlcnRp
bmcgTURQX0lOVEY5X0lOVFIgYW5kIE1EUF9JTlRGMTBfSU5UUiBiZWZvcmUKTURQX0lOVEYxX1RF
QVJfSU5UUiBhbmQgTURQX0lOVEYyX1RFQVJfSU5UUiwga2VlcGluZyB0aGUgc2VxdWVudGlhbApi
bG9jayBpbnRhY3QuIEFkZCB0aGUgY29ycmVzcG9uZGluZyByZWdpc3RlciBlbnRyaWVzIHRvCmRw
dV9pbnRyX3NldF83eHh4IGFuZCBkcHVfaW50cl9zZXRfMTN4eC4KClNpZ25lZC1vZmYtYnk6IE1h
aGFkZXZhbiBQIDxtYWhhZGV2YW4ucEBvc3MucXVhbGNvbW0uY29tPgpTaWduZWQtb2ZmLWJ5OiBO
YWJpZ2UgQWFsYSA8bmFiaWdlLmFhbGFAb3NzLnF1YWxjb21tLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfaW50ZXJydXB0cy5jIHwgMjAgKysrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV9od19pbnRlcnJ1cHRz
LmggfCAgMiArKwogZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2h3X21kc3MuaCAg
ICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfaW50ZXJydXB0cy5jIGIv
ZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2h3X2ludGVycnVwdHMuYwppbmRleCA1
YjdjZDUyNDFmNDUuLmM5YzI5N2NhMDgwYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL21z
bS9kaXNwL2RwdTEvZHB1X2h3X2ludGVycnVwdHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNt
L2Rpc3AvZHB1MS9kcHVfaHdfaW50ZXJydXB0cy5jCkBAIC0yMDYsNiArMjA2LDE2IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHB1X2ludHJfcmVnIGRwdV9pbnRyX3NldF83eHh4W10gPSB7CiAJCU1E
UF9JTlRGX1JFVl83eHh4X0lOVFJfRU4oOCksCiAJCU1EUF9JTlRGX1JFVl83eHh4X0lOVFJfU1RB
VFVTKDgpCiAJfSwKKwlbTURQX0lOVEY5X0lOVFJdID0geworCQlNRFBfSU5URl9SRVZfN3h4eF9J
TlRSX0NMRUFSKDkpLAorCQlNRFBfSU5URl9SRVZfN3h4eF9JTlRSX0VOKDkpLAorCQlNRFBfSU5U
Rl9SRVZfN3h4eF9JTlRSX1NUQVRVUyg5KQorCX0sCisJW01EUF9JTlRGMTBfSU5UUl0gPSB7CisJ
CU1EUF9JTlRGX1JFVl83eHh4X0lOVFJfQ0xFQVIoMTApLAorCQlNRFBfSU5URl9SRVZfN3h4eF9J
TlRSX0VOKDEwKSwKKwkJTURQX0lOVEZfUkVWXzd4eHhfSU5UUl9TVEFUVVMoMTApCisJfSwKIH07
CiAKIC8qCkBAIC0yODIsNiArMjkyLDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHB1X2ludHJf
cmVnIGRwdV9pbnRyX3NldF8xM3h4W10gPSB7CiAJCU1EUF9JTlRGX1JFVl8xM3h4X0lOVFJfRU4o
OCksCiAJCU1EUF9JTlRGX1JFVl8xM3h4X0lOVFJfU1RBVFVTKDgpCiAJfSwKKwlbTURQX0lOVEY5
X0lOVFJdID0geworCQlNRFBfSU5URl9SRVZfMTN4eF9JTlRSX0NMRUFSKDkpLAorCQlNRFBfSU5U
Rl9SRVZfMTN4eF9JTlRSX0VOKDkpLAorCQlNRFBfSU5URl9SRVZfMTN4eF9JTlRSX1NUQVRVUyg5
KQorCX0sCisJW01EUF9JTlRGMTBfSU5UUl0gPSB7CisJCU1EUF9JTlRGX1JFVl8xM3h4X0lOVFJf
Q0xFQVIoMTApLAorCQlNRFBfSU5URl9SRVZfMTN4eF9JTlRSX0VOKDEwKSwKKwkJTURQX0lOVEZf
UkVWXzEzeHhfSU5UUl9TVEFUVVMoMTApCisJfSwKIH07CiAKICNkZWZpbmUgRFBVX0lSUV9NQVNL
KGlycV9pZHgpCShCSVQoRFBVX0lSUV9CSVQoaXJxX2lkeCkpKQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2h3X2ludGVycnVwdHMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9tc20vZGlzcC9kcHUxL2RwdV9od19pbnRlcnJ1cHRzLmgKaW5kZXggMTQyMzU4YTEwNWM1
Li43YjhhMDRmOGQyMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUx
L2RwdV9od19pbnRlcnJ1cHRzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEv
ZHB1X2h3X2ludGVycnVwdHMuaApAQCAtMjcsNiArMjcsOCBAQCBlbnVtIGRwdV9od19pbnRyX3Jl
ZyB7CiAJTURQX0lOVEY2X0lOVFIsCiAJTURQX0lOVEY3X0lOVFIsCiAJTURQX0lOVEY4X0lOVFIs
CisJTURQX0lOVEY5X0lOVFIsCisJTURQX0lOVEYxMF9JTlRSLAogCU1EUF9JTlRGMV9URUFSX0lO
VFIsCiAJTURQX0lOVEYyX1RFQVJfSU5UUiwKIAlNRFBfQUQ0XzBfSU5UUiwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV9od19tZHNzLmggYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfbWRzcy5oCmluZGV4IDBlNjViZjVkZGM0YS4uN2Vj
Y2I0ZDJjNjVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVf
aHdfbWRzcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV9od19tZHNz
LmgKQEAgLTIyNiw2ICsyMjYsOCBAQCBlbnVtIGRwdV9pbnRmIHsKIAlJTlRGXzYsCiAJSU5URl83
LAogCUlOVEZfOCwKKwlJTlRGXzksCisJSU5URl8xMCwKIAlJTlRGX01BWAogfTsKIAoKLS0gCjIu
MzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
