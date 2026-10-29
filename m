Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A60606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 06:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ozlnJ0DX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cswlkksx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Y2rGcoU1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=qTq11ETIvHV1qLeoJSJDAGrQC1jEs9JW5z7aIqO1bDQ=; b=ozlnJ0DX7hKCrfdgze4TNDOvtm
	6ZNxRQTjfZxaLOfnlZ2arsUVEyzoqgaqfG2AZXLTBc5RmGYZLuLiierVqU501sDB32FyA6MdW7ets
	VXWbiM4gS5gQ221RZtZETuR29TcmYL1VqVdi71NlrJmibJixiC4gRqIfpDGTKGV2hNO0ooYDxvVzQ
	+S/6CTpSHgsIWN40uqVp1ZJ69mhoj8TE6ep3zC6IdRs1bz9XFCCL2/86jJWckhLk3XOoCsxowXLK8
	MinweLosTqChzNel3kLvd9C6cGuukZ5UQ0qyDO4EZ02z1r7iTtT2vmxaMlIrWTjN7XHGQ/UUYmUb7
	vEtrMP1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLc-00000008RFf-20PH;
	Thu, 29 Oct 2026 06:10:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLa-00000008RF0-02cZ
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 06:10:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69T5HD1M3341413
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=5Tr0oBFB96n5almIEsEiCD
	rAJB5b3KqP7AbXwp3w3Vk=; b=cswlkksx3mVm/A6JzkaXKiodcGWmzIkS6wJR0q
	la82jaFC54tsCkxU7xTJWXtAWZd2yAM0CLjHBNu5Ecfs9GNeQP+VWzFSD3LSXnGD
	a/B6cEUGsksAoZUuiGpYYKrsqMrd5hWXHXb8F8Op2y73Za2yUcTZQz5iWb3jt+35
	wYidNhLt4VA25IpvNq0HLTG30V6XLnp7avdhAE9lIltRai+nZ2jarIzFmAi2Zu8M
	NfpoeJ/mL+rZPhsyxtrzAcx4EbkEE3Y5/Xgoo2fbAdzuRrRA+mao4Pene6swBKL0
	LmibYBzYGpeSjqC0BprlXsT9DLRieM9RvusQe6eLWe3uS/Cg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkut3gy8n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:44 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so3771177eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 23:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793254243; x=1793859043; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=5Tr0oBFB96n5almIEsEiCDrAJB5b3KqP7AbXwp3w3Vk=;
        b=Y2rGcoU18pNGqsIN5utGKOk+wZydTa+E5i8XHwUd8DOF8d5DYivta+Aahj2AC/18ve
         Symb5OQlwItMvQ7F/FHUrYY4r3fCIW7/qK5vogBcl9x6tt3tRbSO38Rp7bOGa2XvTTKI
         Yp6to1iuKaSeVUOwHZZ5nI2n9nFPXb0TfltiCYNGz3y6WRdiXB/q5nmiC83zr03lWVYR
         R1Y7zfWvq4M83OUws/3BniWsGUKNQ1lJay0eFq0SywEFrw+n8tVZNsitB3CFg4vUlDas
         gT5R7yPZjQ+nd/6BYkhbPdlnuWGHRtXfE+R8AOFBbGtf6xIOUwdhEjdEAQApNr/eChHv
         ysXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793254243; x=1793859043;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=5Tr0oBFB96n5almIEsEiCDrAJB5b3KqP7AbXwp3w3Vk=;
        b=c2+8hRTHLOtnu8EwL9NdL6/N05MgeB5bPJbSFhyAungKMW392gQxYUwYb1gs6GbIaL
         4p9D9EaqPbPSDmZupw5uLFLVuMV+7q8oqQgBAKH1uoraWTNkscb4CdU7t3w8Z8Xz2PEr
         fCll2lc8ZTEG2f6agtiheEqAEVqwqCnfwd1cx73psravLTFy9CWeIrY6+6+7Am7vgyds
         aPdwp3cKtOOk2ntCj/1IpjEKivt235gR57ChqP86nuEWDbwXEF7L1OOy2V4qFMAMaLmK
         r74t9WRTD8pQLed45kUbJCY51El7IykbCEwxTXAN1zZ8LMLcs4IgusoY1/BOeHlcLtfj
         4BQQ==
X-Forwarded-Encrypted: i=1; AKwUvBwYwqVUpC7vhHtSr8Ze/v5Yka7N4h4FL1ESCEaaIJkbWPdiwvNzFeJi+qIU7H67gfPhgfTo0zkRMT4=@lists.infradead.org
X-Gm-Message-State: AFq9FYKXKr1lJPEZDBULHNZ1qCgd3+xWDoqYvCZudMRsZGzqj3hvsLkb
	h2Ex7ew4xBPJPDiPLqYkATHCNoL3iUM8+rQb/XmzbRQ701qDGeKU5Ht5+pv82EF0xqrW64jOfZg
	VvtKv7vLJxd4hPhnfIsj0SQoaRczIj9al++nUx53tkThOiEV95nB9ARU+sAs+WW94IooD
X-Gm-Gg: AYBFou1KWI+MiB9TwIWZP4jEhSaJW5oNs2BuAzvX8Pew/gJY1c03rKbp8eopgSSEm+X
	INRId57Ne4Fp2V7xEetzB7lWMsOPbUOSV3U/0muYZ5V8OwFNOqRlWG6W6+2CRpWmfpyYnYOuAcw
	2tGhXb7b8eLceYCHrcrs5KH8D/HAYUyuKpdzQHhTHy7UwStqRfwrjuVdqgu5yx/SOxuQ+8e5Qxs
	Bgb+VNCc1scfkusjB8QB/ISL8txLetLxdAQBPHxY/P+6/x35Yb+9ZvOoReSgMCONLKAMVknL93u
	8MNiJu1ywdw6bkDau2YRudIRFvbXinn1Qk/YmNuyWf53XQ7/Qy73qw0AcoT9QellViREftP5o1o
	VG9CFOriSfIlGsfmlcqpHSxfKYHZFVwadyw4mr5/9hkZulI5DYJYb6VrKluS8KHEydez8TL786F
	CwUndu5DM=
X-Received: by 2002:a05:7300:a8f:b0:368:c6b9:d3bb with SMTP id 5a478bee46e88-36a203f18f1mr6931728eec.14.1793254243108;
        Wed, 28 Oct 2026 23:10:43 -0700 (PDT)
X-Received: by 2002:a05:7300:a8f:b0:368:c6b9:d3bb with SMTP id 5a478bee46e88-36a203f18f1mr6931698eec.14.1793254242577;
        Wed, 28 Oct 2026 23:10:42 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a239a2e29sm14038935eec.26.2026.10.28.23.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 23:10:42 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Subject: [PATCH v5 0/2] Add PCIe support for Qualcomm Nord platform
Date: Thu, 29 Oct 2026 11:40:15 +0530
Message-Id: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEfj4moC/3XO20oDMRAG4FcpuTZlck688j3EixxtxG500y5K2
 Xc3aQMuaG8Cf5jvn7mgGuccK3rcXdAcl1xzmVoQDzvkD3Z6jTiHlhEFKkETwFOZA+aSaDCJBGE
 jaqMfc0z561rz/HLL9ezeoj912ycOuZ7K/H3ds5A+Nyopv1UuBAM20jimlAPF2FOpdf95tu++H
 I/79vSaYcTGKA80UaeVFPav6dcsdLtPD0ubJdolYQIxQaY7lv1aA2ZY1qwDq6mixAuu7li+sZQ
 My5uNAYSXsf1y+Meu6/oDjuXQLJkBAAA=
X-Change-ID: 20260810-nord-461809f1d5ae
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793254236; l=3557;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=4TqTUrItcs5aJg0p14PtRmd0tQ+G0Qe6xJFnXclq78k=;
 b=rwy+wLV5W6OmAgIpW7//Fsu4l6jr2rAnCxEosmX7/UaB4LDAITlpnQG0Humjx/gOMygNCSWWR
 q578t8p+nBxCxMJBLdyuvm0f3PiRwJCmdB5RTJeQTMRoognTw8oI3BE
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX+0++rv8yoXgJ
 7kbSW4LMESI/wcGPBkEmuVyPFuEwQn1D7zL1cOFusqy82crzQoomLhH2dPnbgXcZDwblMHpI2NK
 LfarCtDh8wqoDh8ENsSgm9CvBnS0VA0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX1Eo3A0liLkto
 0wioUR0KFRYbYPVxPh+IDapblU4lK/WY4FDp30XFi2mFmwaKUOPvsyei+8uFB2fuoPpaI497zK2
 LNZEV9OwcK2yA/aLJE34MxTN/F0JzOk668jqvciJ+Hu4FyDRh16FxLAu3Uh09JlKPZhX29G57U2
 QadLrl7L+fCBpD7G8nTrhtwTUo75g5mWu3xuLsVMN63i7E9U1URaZzVyqbLjdNymt59cZi+7E41
 95cP3WdTEIb2bzv75Roha6KvMCKX4L9XMtqnyOqHzbUjdMhwCdQ0GhEGfhitMoYFrh/6c4jaUlk
 oJ2YDz5OYd3JEu84l/M65CB3iz15UfsuvVy9FiVCbCDirCN+LcEIVCnVSnO/g7+KEkyMdaOZyTT
 kpWkMs9lQ2NP8Sf/9vDRo0ux5RebWZ8bHopR5PokHkz8rKf5XoK+AwM8MWOWtAuaSSOwd8yUwV1
 Vh9G/ml4HOtilpWYlQw==
X-Proofpoint-ORIG-GUID: b4I6KqbCJSHruS5y6JwkH0Zkuw6fr9xq
X-Proofpoint-GUID: b4I6KqbCJSHruS5y6JwkH0Zkuw6fr9xq
X-Authority-Analysis: v=2.4 cv=HYSB3SE8 c=1 sm=1 tr=0 ts=6ae2e364 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=1XWaLZrsAAAA:8 a=P-IC7800AAAA:8 a=JfrnYn6hAAAA:8 a=_HC7VgZuvUK4spJUPywA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PxkB5W3o20Ba91AHUih5:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_231046_054319_375ECD22 
X-CRM114-Status: GOOD (  14.67  )
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

VGhpcyBzZXJpZXMgYWRkcyBQQ0llIHN1cHBvcnQgZm9yIHRoZSBRdWFsY29tbSBOb3JkIChTQTg3
OTdQKSBwbGF0Zm9ybS4KCk5vcmQgaGFzIGEgc2luZ2xlIEdlbjUtY2FwYWJsZSBRTVAgUENJZSBQ
SFkgYmxvY2sgc3BsaXQgaW50byBmb3VyCmluZGVwZW5kZW50bHktY2xvY2tlZCBhbmQgaW5kZXBl
bmRlbnRseS1yZXNldHRhYmxlIHBvcnRzIChBL0IvQy9EKS4KRmlybXdhcmUgc2VsZWN0cyB0aGUg
YWN0aXZlIGxhbmUgdG9wb2xvZ3kgYXQgYm9vdCB2aWEgYSBUQ1NSCmNvbmZpZ3VyYXRpb24gcmVn
aXN0ZXIsIGFuZCB0aGUgc2FtZSBQSFkgYmxvY2sgY2FuIGFwcGVhciBhcyBhIHNpbmdsZQp4MTYg
cG9ydCwgeDgreDgsIHg4K3g0K3g0LCBvciB4OCt4NCt4Mit4MiBkZXBlbmRpbmcgb24gdGhhdCBt
b2RlLiBUaGlzCmlzIHNpbWlsYXIgaW4gc3Bpcml0IHRvIHRoZSBHbHltdXIgbXVsdGktUEhZIHN1
cHBvcnQgYWxyZWFkeSBwb3N0ZWQsCmV4Y2VwdCBOb3JkJ3MgUEhZIHJlZ2lzdGVycyBhcmUgcHJv
Z3JhbW1lZCBieSBMaW51eCByYXRoZXIgdGhhbiBieQpmaXJtd2FyZSwgc28gdGhpcyBzZXJpZXMg
YWRkcyB0aGUgUExMLCBUWFJYWiwgUENTIGFuZCBQQ1MtbGFuZSBpbml0CnRhYmxlcyBhbG9uZyB3
aXRoIHRoZSBwb3dlci11cC9wb3dlci1kb3duL3NvZnQtcmVzZXQgc2VxdWVuY2luZyBuZWVkZWQK
dG8gYnJpbmcgZWFjaCBwb3J0IHVwLgoKVGhlIHNlcmllcyBhbHNvIGRvY3VtZW50cyBhbmQgd2ly
ZXMgdXAgdGhlIHFjb20sbm9yZC1wY2llIGNvbXBhdGlibGUKKHJldXNpbmcgdGhlIGV4aXN0aW5n
IFNBODc3NVAgUENJZSBjb250cm9sbGVyIGJpbmRpbmcpLCBhbmQgYWRkcyBhCkNPUkVfQ0xLX0NH
Q19ESVMvQVVYX1BXUl9ERVQgd29ya2Fyb3VuZCByZXF1aXJlZCB0byBhdm9pZCBhIHRpbWluZwpj
b252ZXJnZW5jZSBpc3N1ZSBpbiB0aGUgUENJZSBwb3dlciBkb21haW4uCgpTaWduZWQtb2ZmLWJ5
OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21t
LmNvbT4KLS0tClRvOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgpUbzogTmVpbCBBcm1z
dHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmc+ClRvOiBSb2IgSGVycmluZyA8cm9iaEBr
ZXJuZWwub3JnPgpUbzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgpU
bzogQ29ub3IgRG9vbGV5IDxjb25vcitkdEBrZXJuZWwub3JnPgpUbzogQ2hhaXRhbnlhIENodW5k
cnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgpUbzogTG9yZW56byBQaWVyYWxp
c2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KVG86IEtyenlzenRvZiBXaWxjennFhHNraSA8a3dp
bGN6eW5za2lAa2VybmVsLm9yZz4KVG86IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJu
ZWwub3JnPgpUbzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KVG86IEJqb3Ju
IEFuZGVyc3NvbiA8YW5kZXJzc29uQGtlcm5lbC5vcmc+ClRvOiBNYXhpbWUgQ2hldmFsbGllciA8
bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+ClRvOiBQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPgpDYzogc2hlbmdjaGFvLmd1b0Bvc3MucXVhbGNvbW0uY29tCkNjOiBs
aW51eC1hcm0tbXNtQHZnZXIua2VybmVsLm9yZwpDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKQ2M6IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnCkNjOiBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnCkNjOiBzaGVuZ2NoYW8u
Z3VvQG9zcy5xdWFsY29tbS5jb20KCi0tLQpDaGFuZ2VzIGluIHY1OgotIFJlYmFzZWQgdG8gdGhl
IHRpcCBhbmQgcmVtb3ZlZCBhbHJlYWR5IGFwcGxpZWQgcGF0Y2hlcy4KLSBMaW5rIHRvIHY0OiBo
dHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA5MjEtbm9yZC12NC0wLWVkMDVjNmUwOTI0MEBv
c3MucXVhbGNvbW0uY29tCgpDaGFuZ2VzIGluIHY0OgotIENvdXBsZSBvZiBuaXRzIGluIGR0IGJp
bmRpbmcgJiBwaHkgZHJpdmVyIChzaGF3biwgTWFuaSkKLSBBZGQgcHJvcGVyIGRlc2NyaXB0aW9u
IGZvciBsaW5rLW1vZGUgJiBwaHktY2VsbHMKLSBSZW1vdmUgc29jIG5vZGUgYW5kIGFkZHJlc3Mg
Y2VsbHMgZnJvbSBleGFtcGxlIChNYW5pKQotIGNoYW5nZSBjZ2NfZGlzX3dvcmthcm91bmQgdG8g
ZGlzYWJsZV9jZ2MgKE1hbmkpCi0gU3BsaXQgY29tbW9uIGNoYW5nZXMgYW5kIG5vcmQgY2hhbmdl
cyAoTWFuaSkgCi0gTGluayB0byB2MzogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwOTA5
LW5vcmQtdjMtMC1iMGE4MjcyMWM1NDdAb3NzLnF1YWxjb21tLmNvbQoKQ2hhbmdlcyBpbiB2MzoK
LSBjaGFuZ2UgdGhlIG5hbWUgdG8gcXVhZGZ1cmNhdGVkIHBoeSAoS29ucmFkKS4KLSByZW1vdmUg
bWluIGl0ZW1zIGFuZCBjaGFuZ2UgY2xvY2tzIG9yZGVyIChLcnp5c3p0b2YpLgotIEZhY3RvciBv
dXQgdGhlIGNvbW1vbiBjb25maWcgYW5kIGNyZWF0ZSBvdmVybGF5cyAmIHRyeSB0byB1c2UgY29t
bW9uCiAgc3ltYm9scyBmb3IgZ2x5bXVyIGFuZCBub3JkIChLb25yYWQpLgotIGNyZWF0ZSAgcXBo
eV9zZXRiaXQgYW5kIHFwaHlfY2xyYml0IChRaWFuZyBZdSkuCi0gYW5kIGluIHFtcF9wY2llX2V4
aXQoKSBhcHBseSBzZXR0aW5ncyBvbmx5IHdoZW4gbm9jc3IgaXMgcHJlc2VudCAoUWlhbmcgWXUp
LgotIExpbmsgdG8gdjI6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDgyOC1ub3JkLXYy
LTAtMThiZjU5ZDE5ZDZmQG9zcy5xdWFsY29tbS5jb20KCkNoYW5nZXMgaW4gdjI6Ci0gRml4IGR0
YmluZGluZyBlcnJvcnMgKEtyenlzenRvZikKLSBMaW5rIHRvIHYxOiBodHRwczovL3BhdGNoLm1z
Z2lkLmxpbmsvMjAyNjA4MjUtbm9yZC12MS0wLTdjMDJmMmI4NzY1YUBvc3MucXVhbGNvbW0uY29t
CgotLS0KS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSAoMik6CiAgICAgIGR0LWJpbmRpbmdzOiBw
Y2k6IHFjb206IGFkZCBOb3JkIFBDSWUgY29udHJvbGxlciBjb21wYXRpYmxlCiAgICAgIFBDSTog
cWNvbTogQWRkIE5vcmQgUENJZSBjb250cm9sbGVyIHN1cHBvcnQKCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCAgICAgICB8ICAxICsKIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jICAgICAgICAgICAgICAgICAgIHwgMTYgKysr
KysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCi0tLQpiYXNl
LWNvbW1pdDogYzMzOWY0MDEwZGVhOGIwZDc1NGY4NGFjZTcwY2QxYjA4OTg3OGVmOApjaGFuZ2Ut
aWQ6IDIwMjYwODEwLW5vcmQtNDYxODA5ZjFkNWFlCgpCZXN0IHJlZ2FyZHMsCi0tICAKS3Jpc2hu
YSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
