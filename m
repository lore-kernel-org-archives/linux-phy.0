Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 011F6E65D2C
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 06:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5GclHSy9Z/xvIfNvWOhbKPYc3cPhTsABByDBDYzm5Yg=; b=2JWJ8kl4OUJ4Up
	57gC9kXCkLXRLByD1FC/xa9Ktzt0j+xbi18Z2fyQq6SLMUr/0Ed9XZy8oOVfV48voXHcapA437QyZ
	IYemiKrDZrH/AlKe4xwiosrmr+pW72i2yjfollg9lGDEVj82M734VcDmKL+dbRcUemFSplGcxTww+
	iFkn23w/itUge+9xRykGdkcK0AnK0mqpbGdlnvKjrjTRG+cOvwCqShzrmyolQb2A2Rc/IXQnZvJHJ
	bYyL7LkY/ZBBxCQavyO77a6gHD6fl1G0UU5rYycY0vOGJgLkX+Og1jKWgM4u4+VVltpULdwkHQ/dc
	n84Nt+DX1DwnJDSlcgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tENQN-00000001ky1-2FlC;
	Fri, 22 Nov 2024 06:45:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tENQL-00000001kxF-0KnJ
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 06:45:50 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALLq70U025794;
	Fri, 22 Nov 2024 06:45:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=tbKLAjjCAf8TU9t077o0XL
	3kurqhHGsoTh1gttK03u4=; b=P2YjtVahfk5OAjxm2Nf20bPqNAGz9nE0W/Q0F7
	dS8Bb5VRQv6pik46RenAiScj/DmG8MhH0TOaTAwCSTJ0BTuuTE1jK1u+Rt7JxbHK
	ctshmnJEv/AcOPQv4hIP9m0cz7Po/O2jQN53LxHisQsrh2c2wdBG5k5k2YBDs6QG
	YjSoMUMddzIjmRYYdrGFJ6oaO+Ene1pRWc3s45mg/C8tfAjykXfJWWLQ/6bAxqTa
	N27EDhSh3xusX/letnrRc2WOoAHLq/zXI/GYBteZhjzY6EOQSMJpIiVxzhSLETo7
	4Bk7h9OxjeejN/qBkof3v+85cyGQuI+F9PvmlGymvIGnfTCg==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 432d5b11tb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 06:45:26 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AM6jPBY019640
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 06:45:25 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 21 Nov 2024 22:45:19 -0800
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
Subject: [PATCH v3 0/3] Enable UFS on QCS615
Date: Fri, 22 Nov 2024 14:44:25 +0800
Message-ID: <20241122064428.278752-1-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Tfkh1FnCMxjpK9blMGMDSbu6vnxeG_Sr
X-Proofpoint-ORIG-GUID: Tfkh1FnCMxjpK9blMGMDSbu6vnxeG_Sr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_224549_124535_ADD728FB 
X-CRM114-Status: GOOD (  11.02  )
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
biBMaXUgPHF1aWNfbGl1eGluQHF1aWNpbmMuY29tPgotLS0KQ2hhbmdlcyBpbiB2MzoKLSBQQVRD
SCAxLzM6IEFkanVzdCB0aGUgb3JkZXIgb2YgU09CLgotIFBBVENIIDIvM++8mk1vZGlmeSBzb21l
IGZvcm1hdHRpbmcgaXNzdWVzOiBXcm9uZyBpbmRlbnRhdGlvbiwgCiAgc3BsaXQgaW50byBvbmUg
ZW50cnkgcGVyIGxpbmUuCi0gTGluayB0byB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjQxMTE5MDIyMDUwLjI5OTU1MTEtMS1xdWljX2xpdXhpbkBxdWljaW5jLmNvbS8KQ2hhbmdl
cyBpbiB2MjoKLSBQQVRDSCAxLzM6IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CiAgQWNrZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Ci0gUEFUQ0ggMi8z77ya
VXNlIGFuIE9QUCB0YWJsZSBpbnN0ZWFkIG9mIGZyZXEtdGFibGUtaHouQW5kIG1vZGlmeQogIHNv
bWUgZm9ybWF0dGluZyBpc3N1ZXMuCi0gUEFUQ0ggMy8z77yaUmV2aWV3ZWQtYnk6IEtvbnJhZCBE
eWJjaW8gPGtvbnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KLSBMaW5rIHRvIHYxOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDEwMTcwNDIzMDAuODcyOTYzLTEtcXVpY19saXV4
aW5AcXVpY2luYy5jb20vCgotLS0gCgpYaW4gTGl1ICgzKToKICBkdC1iaW5kaW5nczogdWZzOiBx
Y29tOiBBZGQgVUZTIEhvc3QgQ29udHJvbGxlciBmb3IgUUNTNjE1CiAgYXJtNjQ6IGR0czogcWNv
bTogcWNzNjE1OiBhZGQgVUZTIG5vZGUKICBhcm02NDogZHRzOiBxY29tOiBxY3M2MTUtcmlkZTog
RW5hYmxlIFVGUyBub2RlCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Fjb20sdWZzLnlh
bWwgICAgIHwgICAyICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMg
ICAgICB8ICAxNiArKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUuZHRzaSAgICAg
ICAgICB8IDExNCArKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTMyIGluc2Vy
dGlvbnMoKykKLS0tCmJhc2UtY29tbWl0OiBjODNmMGI4MjU3NDFiY2I5ZDhhN2JlNjdjNjNmNmI5
MDQ1ZDMwZjVhCgotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
