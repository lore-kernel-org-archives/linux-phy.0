Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E9AD60D0B
	for <linux-phy@archiver.kernel.org>; Tue, 19 Nov 2024 02:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dpy2rN9mR9GanYSjOPS3RSw4VAhIejN7gzTQqzt+mMc=; b=hyQoo9BWPf/Cqa
	mBRBuvgD/IE5R3udd8Om1R08P3MmKgEOVltbVqsOxTlE0D4f2XaINVwT9jW95owyFvR7l3QEXhBkK
	ml+tiK9rRrWx9DIlc+LBKFZRaem7EvE+2FH0D16xri9TR6xfPABQ8fbvtln29W/HZPsIseAxADQko
	+FaM4j86UlQDLA3Dk8uu0Xf9RQvCaN9lj5mH8AGVtIYk6z7wB6tNf8/tlHnJ8tohnIcyDGoH5r+XV
	/ogLMq19vUZJR/wZbmoeFPXDJr6R05icnNt6K5FCsdz085RgIHn6D6cMIeUZIe3Q93EOUI/0jfKJM
	4ZwivBimcAjjz683zllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDDsD-0000000BAfF-2Hv3;
	Tue, 19 Nov 2024 02:21:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDDsA-0000000BAej-0ibp
	for linux-phy@lists.infradead.org;
	Tue, 19 Nov 2024 02:21:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AIGGhRK028554;
	Tue, 19 Nov 2024 02:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=SeaC2NyM77Sf41ZMIHFVuN
	BuRtQtRhVsb2GmS2eavso=; b=YO1OnWT2aoS33lu+a5eLLdUafow8A4XZsAhLRL
	D7GTnxlcGcZ6qosG2wf6cGp3w/hmNkU6+CR83WmG2lAS2cUuxx6gahm5X8k/oO/1
	/5Gl8653Wb6re93ZxjSOverCWN49hpSxxL/cpIW3zES1Xqk78xpX60UFvJTvyhST
	eCrY8nwI63y+ANzVemz6VCzEsaGlZw6Mjg/RmFv29gp573Lu1N13+G3dvoKRpdOv
	vrPaTCZf8Sn6v+sOr8JO5h4QCHJ8Z5cJnqO1Xl01aUpRbzNVkUFOxzNigsxT5SRL
	ua60WW6Dc1qTx4waMDoUe1TcEqX8nRfrKtEx4IQOOWtY5y1w==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4308y814x6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Nov 2024 02:21:28 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AJ2LRD1020828
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Nov 2024 02:21:27 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 18 Nov 2024 18:21:21 -0800
From: Xin Liu <quic_liuxin@quicinc.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
Subject: [PATCH v2 0/3] Enable UFS on QCS615
Date: Tue, 19 Nov 2024 10:20:47 +0800
Message-ID: <20241119022050.2995511-1-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GXPaPUiJ3RWVHI6XKpolS0l-NernmBHQ
X-Proofpoint-GUID: GXPaPUiJ3RWVHI6XKpolS0l-NernmBHQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxscore=0 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411190019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_182146_215533_1017E661 
X-CRM114-Status: GOOD (  10.27  )
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

RnJvbTogU2F5YWxpIExva2hhbmRlIDxxdWljX3NheWFsaWxAcXVpY2luYy5jb20+CgpBZGQgVUZT
IHN1cHBvcnQgdG8gdGhlIFFDUzYxNSBSaWRlIHBsYXRmb3JtLiBUaGUgVUZTIGhvc3QgY29udHJv
bGxlciBhbmQKUU1QIFVGUyBQSFkgaGFyZHdhcmUgb2YgUUNTNjE1IGFyZSBkZXJpdmVkIGZyb20g
U002MTE1LiBJbmNsdWRlIHRoZQpyZWxldmFudCBiaW5kaW5nIGRvY3VtZW50cyBhY2NvcmRpbmds
eS4gQWRkaXRpb25hbGx5LCBjb25maWd1cmUgVUZTLXJlbGF0ZWQKY2xvY2ssIHBvd2VyLCBhbmQg
aW50ZXJjb25uZWN0IHNldHRpbmdzIGluIHRoZSBkZXZpY2UgdHJlZS4KClRoaXMgcGF0Y2ggc2Vy
aWVzIGRlcGVuZHMgb24gYmVsb3cgcGF0Y2ggc2VyaWVzOgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMjAyNDA5MjYtYWRkX2luaXRpYWxfc3VwcG9ydF9mb3JfcWNzNjE1LXYzLTAtZTM3NjE3
ZTkxYzYyQHF1aWNpbmMuY29tLwpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDEwMTEw
NjMxMTIuMTkwODctMS1xdWljX3FxemhvdUBxdWljaW5jLmNvbS8KClNpZ25lZC1vZmYtYnk6IFhp
biBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBQQVRD
SCAxLzM6IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+CiAgQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Ci0gUEFUQ0ggMi8z77yaVXNlIGFuIE9QUCB0YWJs
ZSBpbnN0ZWFkIG9mIGZyZXEtdGFibGUtaHouQW5kIG1vZGlmeQogIHNvbWUgZm9ybWF0dGluZyBp
c3N1ZXMuCi0gUEFUQ0ggMy8z77yaUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNDEwMTcwNDIzMDAuODcyOTYzLTEtcXVpY19saXV4aW5AcXVpY2luYy5jb20v
CgotLS0gCgpYaW4gTGl1ICgzKToKICBkdC1iaW5kaW5nczogdWZzOiBxY29tOiBBZGQgVUZTIEhv
c3QgQ29udHJvbGxlciBmb3IgUUNTNjE1CiAgYXJtNjQ6IGR0czogcWNvbTogcWNzNjE1OiBhZGQg
VUZTIG5vZGUKICBhcm02NDogZHRzOiBxY29tOiBxY3M2MTUtcmlkZTogRW5hYmxlIFVGUyBub2Rl
CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlhbWwgICAgIHwgICAyICsK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMgICAgICB8ICAxNiArKysK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaSAgICAgICAgICB8IDExMiArKysr
KysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTMwIGluc2VydGlvbnMoKykKLS0tCmJh
c2UtY29tbWl0OiAwYWJjZmRmZmNmODcyZTRlZjAwZTMyOWIyMDEzZmIzMzhhY2YzYTU3CgotLSAK
Mi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
