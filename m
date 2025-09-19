Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 411D2CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lJsd+NA3h6V3qqQKO4QXNpxRvQVkxhqbmL/DqWvh1dk=; b=ewmLnm0raveePg
	ry+Wg+QIzAV4HUuz79jI4en4k/OKY3IIU7v2o5ABmWNUHTJXSE40jk84tnCaKjYEgzxIs1RJL1TxJ
	2Rb6EK119cryvi+c8s0tzA6EqsISYk6TCfqryluF26kmbV6GsjdqZgu3m10B/+vDSJH2eH3vv99Kb
	6zd2JXokNyU+LUv4dDPyFWjPq6gzgD+KWAhqWOBkILubaTgwKZEo8TGKVXADKsifdpKcUEjkFNmRj
	An6kboHDamleHJW4cHmzzaYrsxAgfeIrXXO1/37p796DzU33kTPp31o0OfQIOBe7HIa2UzzB7nfjj
	rW6AI1LiqKORjljNA52A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc34-0000000383T-47bk;
	Fri, 19 Sep 2025 14:25:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc32-0000000382j-1Iih
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:17 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J6wnGx029495
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EB6v7KZSrWI/c+6Qaba39U
	ewy2fI4u99KGobQFxuaEU=; b=me6oXFWGBliTytVxG0Q4GsCAwyJGdN0oFrhEbU
	YZdelqfbCvAp3l9Hgzqq+v1IdfBXvD7AwumYdl9ArP6on0NQ/e7YWUrRvtf9CzLh
	isALTYAuTQhw51Hi8upnm23lQ2Mmp4woWm4KNEvB4pGlCQopjhBmkTj0/rMqdGKb
	N8JGwVay4nEq/0aXCcV83p74Dz9010tfR3G+97o5bsb2SXmkACbo0R+EP+mqXyCh
	8xh15ZsG/rBNHr9m8fhYMuz0pDM/xCKmov3BD6YMAPfb42FInx1qvH5X66lSiGjV
	f7IheVOMRgyBWFM+1BilcEZo+Vxo+lFCbLONlp4TW7L6NjAA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy12per-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:15 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26970768df5so4464525ad.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291904; x=1758896704;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EB6v7KZSrWI/c+6Qaba39Uewy2fI4u99KGobQFxuaEU=;
        b=rNYEAf2MakGJL/wMiimzcQuCsbI5eU/FAC4f+NfKfZ+yqRJfRqV5umX0nqZYgMltP1
         RnUB/zwGhmh5UOL/fRWlUSpxU8NvqNcAyNMiGp5JC+fKwmdcKTUNh4WaqXojeB6P1fgy
         cS8g1+zaosujphaOGaVsaeEJL/az5On0grbbyU3yhgINLHCSNdFdPq6hMoIQoLsBTxX1
         HjLrk+SPW99EW6TuSD7uqvOH609nKAg3qvZml9mkNSSxEHGhcRVovo3Qx3qVnrGVAx85
         8l9N7A+DDsVOyKAsxssbP7880csmSHTnjagZMyuZBLPm1URMjXgV/6DWG9yD6V32IJi0
         0J0w==
X-Forwarded-Encrypted: i=1; AJvYcCVbKjXFZVU9jujsmwEy0n8W1RZASk4YibZm70g2+mxdArulW5Vuwl9POJZXH+EI9p/ItQQMUu7NleA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfGYlJh1cfEF5rCPQz7htowUig1NgDStQdXgHIhTfJBW11w/an
	bMCnuT8L8UBZpSIzoBGdFn7TWca9dljPNMHzLRKH6lIZce1fGqFIAWQszSV2wy/sc5ugyfDFJ49
	7NdGKzuip4VHUVku6ifcUNCTZ7AJr/8Kgs2aBxMTrduFFlmbiBoscFjj2ng8eiBXa5y6I
X-Gm-Gg: ASbGnct/XqHaDAi4xmP72hpbjyc1Eaaea5QnfsSkFMTY2NPoYtp2w4eKXlvAH9mR73J
	KXrZCzKY4mP4SHg/3XJpN7+97vNJC/GUGNXDi7Yiaj1NZ53I2bCwgypwjB/Kyee+JtDJtTQqeCE
	9fX/5gSIiL0EUlZ8BuuHE1BbyWemW29zeOm0fe0yvK78IexXk1BuNrYpK6MB/BWZQDAG1zeLguE
	R2zofpYXSZbSHM1vlSLShwqCAR5zIaBtkUam2H/cPR8QprPg62MXRCAEDylQekr+2jn+ml9qdmB
	Mdx5gKVxfOTStwUzT1xKo4S9tkAbV9g08M0oXso7QJPJphF/QH2Nb2pjRxHR5Di0pQ/gKBytL7v
	y9uvKEdKlwtcM5Q==
X-Received: by 2002:a17:902:aa8d:b0:267:bd8d:1b6 with SMTP id d9443c01a7336-269ba501141mr19595895ad.6.1758291903670;
        Fri, 19 Sep 2025 07:25:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9e7VP28cdUwN8lzlWnixJ5Xu8UcAuFCb9OkPevjxScXEZSW3vj9TXeaqfK3V/6VPSATqm9w==
X-Received: by 2002:a17:902:aa8d:b0:267:bd8d:1b6 with SMTP id d9443c01a7336-269ba501141mr19595635ad.6.1758291902969;
        Fri, 19 Sep 2025 07:25:02 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:02 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v5 00/14] Add DisplayPort support for QCS615 platform
Date: Fri, 19 Sep 2025 22:24:17 +0800
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJNnzWgC/5XOwY6DIBSF4VdpWA8N9wKDdNX3mMwCAackVRTUt
 Gl896LJxM3MwhU5kPwfL5J9Cj6Ty+lFkp9DDrErQ36ciL2Z7sfT4MomyFAyDZoa56gLub+bZx/
 TSPPUb2cTEx1s/gRJy9tYZkubqpJSq5pLxUkp9sk34bFpX99l30IeY3pu+Azr7eoIADzmzEAZZ
 doIziunuW+uwxRs6OzZxpas0oy/dckU4rE6lrrAWjCuQEFTXWPO52Ey91Jvd4LvRIXsGMELUb5
 fO5Tecm3/IcROaIBjhCgEKoa1cwaEd38Qy7K8AZPtxqERAgAA
X-Change-ID: 20250919-add-displayport-support-for-qcs615-platform-f885597b3573
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291893; l=4929;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=S30Rr40MCfhpxcSOXP+kVSFgcA2a757QcO72sQKavRk=;
 b=TCHWCcb0lNmNKuXXj2ujNV6PVp4ZlA0gy/8bq7ojOvHtv5q7CDT9GARFHcr1iwWvPCLmOw55j
 MjlgRfy2gUBCZ0Xptlg2ECcA8eSfCRH90rUmALPX2i/QKTM1y3KPX6N
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: wRZF4W5i6KIZVvo2cj9fZgpAKAU8fH6C
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cd67cb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=Y-Wlz9CHQrt7UwghuOUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wRZF4W5i6KIZVvo2cj9fZgpAKAU8fH6C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXyfIsS/BHLGw7
 Jeh7K3rND3oEvPFFsl93muc740k7tcYGDQamEYvjAPv7xx7s0J1G6Kb+D3Cgjvg7nv+GzzT0zeM
 rHiKwbU2eLmpTs4PFYkivZqjRpadrOOwYtFK5/omWBmCRAXDg9jX38TrNuaHPPv0SoVSqodcE1Y
 QsYSzin0FO0oXRMwyk0cCBHaUczBnsRFes3aiPPxpkDDp+qdCECRAAuaXP1ZEa0PD1UnrqNyig2
 F1chYH1x3JhG6LrAoZYfeT/ejKkJswN8UrbBDcvOpSrT8I7L51/IQ+A5kP6BPuBfDUBTPL2HxBn
 sf4irkxwn9vhOB7AeoEXeVyk/O1KRg7MN5e8xLw7a6FnVMO0fn9MVWJQMygd7BzQlrPkNE8wmyB
 wiVhnyhh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072516_365326_37CBCB49 
X-CRM114-Status: GOOD (  15.48  )
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

VGhpcyBzZXJpZXMgYWltcyB0byBleHRlbmQgdGhlIFVTQi1DIFBIWSB0byBzdXBwb3J0IERQIG1v
ZGUgYW5kIGVuYWJsZQpEaXNwbGF5UG9ydCBvbiB0aGUgUXVhbGNvbW0gUUNTNjE1IHBsYXRmb3Jt
LgoKVGhlIGRldmljZXRyZWUgbW9kaWZpY2F0aW9uIGZvciBEaXNwbGF5UG9ydCBvbiBRQ1M2MTUg
d2lsbCBiZSBwcm92aWRlZAppbiBhIGZ1dHVyZSBwYXRjaC4KClNpZ25lZC1vZmYtYnk6IFhpYW5n
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2NToK
Ci0gQWRkIG5ldyBwYXRjaCB0byBpbnRyb2R1Y2UgUVNFUkRFUyB2MiBDT00vVFhSWCByZWdpc3Rl
ciBoZWFkZXJzLgotIFJlc3RvcmUgbGVnYWN5IHJlc2V0ICYgY2xvY2sgcmVnaXN0ZXIgbG9naWMu
IFtEbWl0cnldCi0gVXBkYXRlIHBoeV94bGF0ZSgpIHRvIHJldHVybiBFUlJfUFRSKC1FTk9ERVYp
IHdoZW4gZHBfcGh5IGlzIE5VTEwuIFtEbWl0cnldCi0gUmVuYW1lIGhlbHBlciBmcm9tIHFtcF9j
aGVja19tdXRleF9waHkoKSB0byBxbXBfdXNiY19jaGVja19waHlfc3RhdHVzKCkuIFtEbWl0cnld
Ci0gRHJvcCBzdG9yaW5nIHN0cnVjdCBkZXZpY2UgKmRldiBpbiBkcF9saW5rIGFzIGl0IGlzIG9u
bHkgdXNlZCBvbmNlLiBbRG1pdHJ5XQotIEFkZCByb2J1c3QgbGFuZSBtYXBwaW5nOiBkZWZhdWx0
IDE6MSwgY29tcGxldGUgcGFydGlhbCBjb25maWdzLiBbRG1pdHJ5XQotIFJlb3JnYW5pemUgc3Vi
LXBhdGNoZXMgdjVbMDcvMTTvvIwgMDgvMTQsIDExLzE077yMIDEyLzE0XSBhcyBzdWdnZXN0ZWQu
Ci0gTGluayB0byB2NDogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwOTExLWFkZC1k
aXNwbGF5cG9ydC1zdXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tdjQtMC0yNzAyYmRkYTE0ZWRA
b3NzLnF1YWxjb21tLmNvbS8KCkNoYW5nZXMgaW4gdjQ6CgotIERyb3AgcGF0Y2ggdjNbMDEvMTQg
JiAxMy8xNF0sIHdpbGwgc3V0Ym1pdCBuZXcgcGF0Y2hzZXRzIGJhc2VkIG1zdCBkdCBiaW5kaW5n
IHNlcmllcy4KLSBVcGRhdGUgbWFpbnRhaW5lciBvZiBxY29tLHFjczYxNS1xbXAtdXNiM2RwLXBo
eS55YW1sIHRvIG15c2VsZi4KLSBBZGQgbWlzc2luZyBhdXggYW5kIHBpcGUgY2xvY2tzLiBbRG1p
dHJ5XQotIERyb3Agc2Vjb25kIFRDU1IgcGhhbmRsZTsgcmVnaXN0ZXIgb2Zmc2V0cyBhcmUgZGVz
Y3JpYmVkIGRpcmVjdGx5LiBbRG1pdHJ5XQotIEFkZCBVU0JDIFBIWSBzZXJpZXMgcmVsYXRlZCBp
bml0X2xvYWRfdUEgY29uZmlncy4gW0RtaXRyeV0KLSBEcm9wIHYzWzA0LzE0XSBxbXBfcGh5X3Vz
YmNfdHlwZSBkZWZpbmUgYW5kIHVzZSBkcF9zZXJkZXMgb2Zmc2V0cyB0byBjb25maXJtIERQIGNh
cGFiaWxpdHkgW0RtaXRyeV0KLSBSZW9yZ2FuaXplIHN1Yi1wYXRjaGVzIGFzIHN1Z2dlc3RlZC4K
LSBMaW5rIHRvIHYzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA4MjAtYWRkLWRp
c3BsYXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS12My0wLWE0M2JkMjVlYzM5Y0Bv
c3MucXVhbGNvbW0uY29tLwoKQ2hhbmdlcyBpbiB2MzoKCi0gUmVuYW1lZCBxY29tLHFjczYxNS1x
bXAtZHAtcGh5LnlhbWwgaW4gdjIgdG8gcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sIGluIHYz
IGZvciBRQ1M2MTUgVVNCMytEUCBQSFkuCi0gVXBkYXRlZCBwYXRjaCB2M1swMi8xNF0gdG8gcmV2
aXNlIGJpbmRpbmcgdGl0bGUsIGRlc2NyaXB0aW9uLCBhbmQgcHJvcGVydHkgb3JkZXIuIFtLcnp5
c3p0b2ZdCi0gVXBkYXRlZCBjb21taXQgbWVzc2FnZXMgaW4gcGF0Y2ggdjNbMDEvMTRdIGFuZCBb
MTMvMTRdIHRvIHJlZmxlY3QgdGhlIERUU0kgcmVuYW1lIGFuZCBjbGFyaWZ5IGNvbXBhdGliaWxp
dHkuIFtLcnp5c3p0b2ZdCi0gQWRkZWQgVVNCMytEUCBtb2RlIGltcGxlbWVudGF0aW9uIGluIHBh
dGNoZXMgdjMgWzAwM+KAkzAxMl0sIG9yZ2FuaXplZCBpbiBsb2dpY2FsIGNodW5rcy4gW0RtaXRy
eV0KLSBEcm9wcGVkIHBhdGNoIHYyWzAzLzEzXSB0byBtYWludGFpbiBmdWxsIGJhY2t3YXJkIGNv
bXBhdGliaWxpdHkgd2l0aCBVU0JDLgotIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI1MDcyMi1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRm
b3JtLXYyLTAtNDJiNDAzNzE3MWY4QG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYyOgoK
LSBBZGQgbmV3IGJpbmRpbmcgcWNvbSxxY3M2MTUtcW1wLWRwLXBoeS55YW1sIGZvciBRQ1M2MTUg
c3RhbmRhbG9uZSBEUAotIFNwbGl0IERQIFBIWSBkcml2ZXIgaW50byBwYXRjaGVzIDQtMTEgYnkg
bG9naWNhbCBjaHVua3MgW0RtaXRyeV0KLSBVcGRhdGUgRFAgUEhZIGNvbmZpZ3VyYXRpb24gZmxv
dyB0byBhbGlnbiB3aXRoIFFNUCBDb21ibyBQSFkgaW1wbGVtZW50YXRpb24gW0RtaXRyeV0KLSBV
cGRhdGUgYWxsIGhleCB2YWx1ZXMgdG8gbG93ZXJjYXNlIFtEbWl0cnldCi0gUmVtb3ZlIHJlZHVu
ZGFudCBjb21tZW50cyBpbiBEUCBQSFkgZHJpdmVyIFtLcnp5c3p0b2ZdCi0gUmVtb3ZlIGludmFs
aWQgVVNCQyB0eXBlIGRlZmluZSBbRG1pdHJ5XQotIE1vdmUgbGFuZV9tYXDvvIwgbWF4X2RwX2xh
bmVz77yMIG1heF9kcF9saW5rX3JhdGUgcGFyc2luZyBsb2dpYyB0byBkcF9saW5rIFtEbWl0cnld
Ci0gQWRkIFRDU1ItYmFzZWQgbXV0ZXggbG9naWMgZm9yIERQIGFuZCBVU0IgUEhZIGNvZXhpc3Rl
bmNlIFtEbWl0cnldCi0gRHJvcCBwYXRjaGVzIDbigJM4IGFuZCByZW1vdmUgcmVsYXRlZCBiaW5k
aW5nIHByb3BlcnRpZXMgYXMgcmVqZWN0ZWQgdXBzdHJlYW0KLSBMaW5rIHRvIHYxOiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDExMjktYWRkLWRpc3BsYXlwb3J0LXN1cHBvcnQtZm9y
LXFjczYxNS1wbGF0Zm9ybS12MS0wLTA5YTQzMzhkOTNlZkBxdWljaW5jLmNvbS8KCi0tLQpYaWFu
Z3h1IFlpbiAoMTQpOgogICAgICBkdC1iaW5kaW5nczogcGh5OiBBZGQgUU1QIFVTQjMrRFAgUEhZ
IGZvciBRQ1M2MTUKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogUmVuYW1lIFVTQi1zcGVjaWZp
YyBvcHMgdG8gcHJlcGFyZSBmb3IgRFAgc3VwcG9ydAogICAgICBwaHk6IHFjb206IHFtcC11c2Jj
OiBBZGQgRFAtcmVsYXRlZCBmaWVsZHMgZm9yIFVTQi9EUCBzd2l0Y2hhYmxlIFBIWQogICAgICBw
aHk6IHFjb206IHFtcC11c2JjOiBBZGQgcmVndWxhdG9yIGluaXRfbG9hZCBzdXBwb3J0CiAgICAg
IHBoeTogcWNvbTogcW1wLXVzYmM6IE1vdmUgcmVzZXQgY29uZmlnIGludG8gUEhZIGNmZwogICAg
ICBwaHk6IHFjb206IHFtcC11c2JjOiBBZGQgVVNCL0RQIHN3aXRjaGFibGUgUEhZIGNsayByZWdp
c3RlcgogICAgICBwaHk6IHFjb206IHFtcC11c2JjOiBNb3ZlIFVTQi1vbmx5IGluaXQgdG8gdXNi
X3Bvd2VyX29uCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBUQ1NSIHBhcnNpbmcgYW5k
IFBIWSBtb2RlIHNldHRpbmcKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIERQIFBIWSBv
cHMgZm9yIFVTQi9EUCBzd2l0Y2hhYmxlIFR5cGUtQyBQSFlzCiAgICAgIHBoeTogcWNvbTogcW1w
LXVzYmM6IEFkZCBVU0IvRFAgZXhjbHVkZSBoYW5kbGluZwogICAgICBwaHk6IHFjb206IHFtcDog
QWRkIERQIHYyIFBIWSByZWdpc3RlciBkZWZpbml0aW9ucwogICAgICBwaHk6IHFjb206IHFtcC11
c2JjOiBBZGQgUUNTNjE1IFVTQi9EUCBQSFkgY29uZmlnIGFuZCBEUCBtb2RlIHN1cHBvcnQKICAg
ICAgZHJtL21zbS9kcDogbW92ZSBsaW5rLXNwZWNpZmljIHBhcnNpbmcgZnJvbSBkcF9wYW5lbCB0
byBkcF9saW5rCiAgICAgIGRybS9tc20vZHA6IEFkZCBzdXBwb3J0IGZvciBsYW5lIG1hcHBpbmcg
Y29uZmlndXJhdGlvbgoKIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1w
aHkueWFtbCAgIHwgIDExMSArKwogZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgICAg
ICAgICAgICAgICAgICAgfCAgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsu
YyAgICAgICAgICAgICAgICAgICB8ICAxMTcgKysrCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2Rw
X2xpbmsuaCAgICAgICAgICAgICAgICAgICB8ICAgIDUgKwogZHJpdmVycy9ncHUvZHJtL21zbS9k
cC9kcF9wYW5lbC5jICAgICAgICAgICAgICAgICAgfCAgIDc4ICstCiBkcml2ZXJzL2dwdS9kcm0v
bXNtL2RwL2RwX3BhbmVsLmggICAgICAgICAgICAgICAgICB8ICAgIDMgLQogZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLWRwLXBoeS12Mi5oICAgICAgfCAgIDIxICsKIGRyaXZlcnMv
cGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLWNvbS12Mi5oIHwgIDEwNiArKwogLi4u
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcXNlcmRlcy10eHJ4LXYyLmggICAgfCAgIDY4ICsr
CiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiYy5jICAgICAgICAgICB8IDEw
NTggKysrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC5oICAgICAgICAgICAgICAgIHwgICAgMyArCiAxMSBmaWxlcyBjaGFuZ2VkLCAxNDEyIGluc2Vy
dGlvbnMoKyksIDE2OCBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiA4ZjdmOGIxYjNmNGM2
MTNkZDg4NmY1M2Y3NjhmODI4MTZiNDFlYWEzCmNoYW5nZS1pZDogMjAyNTA5MTktYWRkLWRpc3Bs
YXlwb3J0LXN1cHBvcnQtZm9yLXFjczYxNS1wbGF0Zm9ybS1mODg1NTk3YjM1NzMKCkJlc3QgcmVn
YXJkcywKLS0gClhpYW5neHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
