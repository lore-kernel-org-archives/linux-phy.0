Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBC61CAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FevZ8qaBeBpyQ8tLQr2vOn6tVWX/PJVCs2hm42qnwzA=; b=uXQGuSUO6K+TtV
	2HYYJDX5SnVVOhqRVt5kS/FTNbPMWP5/r8CIui1EsNFKo4oQndU2RsXF1Xdsi4ikkNLkxwSYiynn5
	6rNf8ObdBKlSaAoBmgZuv1xiqZVgUv38r6Ef2VtEH0gtCmbUIc9ei6eayxV7P64WMrd3SrZ6o4Pa9
	WvWJkST34d3GXpT6vkLQ2RpFJnGLeGsNzg5JeYFbPiiThPcCK7K9gfMMxDmWKSnbRqFICz+D+ksII
	Nx/5ww+sJ5yhB2qVuLPjBT/g+u4PN1kje4PHNQdm4rpo6fKH/IYtC0xnlfmy4TR93sTuSv/+8VTjw
	isqEuLm0QfY1+MR+dV5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwidK-00000003g7I-2kzx;
	Thu, 11 Sep 2025 14:50:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwidG-00000003g5L-3mDh
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:50:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBDSoQ015939
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/xEH5bhCDH+EambDfpLJYH
	Y3ZvSSk+a6Bg2AG4xJvXg=; b=Vbwgb9TdPNDtgBEwlILTgizCBFoyQZMLbK8YNT
	aZskG1U1ETHPXOu5q3lbmVNLrhyY1HhHUXLgzwzSUaLXz9ZnNEb58fJmxlEGKTau
	6ItEWpHsKyug6iIIofMBYq4oM9/2OV9o94Vuw5OwQ0O2olDLx8vYMbTZl/5uAmWN
	7Y+xA8zGXUAg0Lky8fnEbRyGA12WxEVjL6mmpd0EAKIIrBJrcU+A+qJPkN7zpuV2
	QQVQoFgk1EZbufMY66eoUb0e5549UliLC8+CYywpd0Cgc2mDvxZhGOqwSsiN7EEA
	yaxi4ZAEksYoqUrSiFC4eSjMUJWaSEko9YJMzVfDTDH7Iz6Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m80kh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:50:41 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32b51631ea5so234173a91.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602240; x=1758207040;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xEH5bhCDH+EambDfpLJYHY3ZvSSk+a6Bg2AG4xJvXg=;
        b=V2Lb0e+4D8IsDgNSEcp9AzqaAEY2+dLxZxOEvusOX1HDuLO2en4uHBmlpu55UD1t50
         hlN6HqzloU3wIfOdFajJPqF/vxbNMc5yXHIZU7unQAlqrY+aAd0j1/I/+CZ83c97CcS/
         IxVUcixo5C6ngfxAtXHSyXxrDS4ART6m5tI/ObzMYiJzRIiH2zLfkWYnTp4+B9Z8L4zu
         J/k9+y4C75VchyyNjHYxGB+YbTk8u6GV0iDsuQ7BOiIO0JESQGJT0sRoV3v9942uKIDW
         0hjFE4HkBudly2OjKXOvc7umxmWwaObDL3AVvwunJJQgkG41cuVSKhY3+2mWN0wc55rX
         V6GQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8vg2H+P6s2LBIMw7tGpAIyV0KGXU7rfzToBqoafotMCUNzJiyB1Baf2H01ncpFqnyO5ijiec0PT8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywvom+gCZY1GfuNGzr/uwU7UGf6NfbXAG8yfTXrQAjrLcf7Ael5
	X/8DfC7H6oQX3XSeKN2Zdu5NG7nUsJVQLFOW36jpnA8Wr/6Z9XPPA385ZApn7PScnDi16uvA9yw
	H4lJMu/s4Cv4Fofszx9sJSvAu5RcCk8pAzOYgMvn1EU40cGhCZClgGF5rr/DihkV0WYyd
X-Gm-Gg: ASbGncst0Nw34QtRCmcsbdDNvAQ7CLCfqSPKOAjEmSLs5Y1NwRHaAwsdRXCYD3cbZua
	Q6ps2irhwJkes1aBPelwjo+pxH3uoZapJxtcYPoCFjqNwduUBWyQQ5schattqz9NVjMr6WtBl97
	TdBXsjMo7P43/w2T1AA2kdr92EnakU/TgMievKG4N/ONd8C6ms/S41l4xpNwmccyZsfHiOCxybG
	wo25ibAapTV1h9U0NqI8C/rdJqsvxIP1k+vU+h/HJ3xj9gGtGH+LUPaQD6AgDsgrWSli8cXxvPl
	wMPG3V0gqh9aBY8qEd0on1ATNcls+3S8z6ehoTD1Nl7Klq8twdFBKQosnFmCAC+gaKDqYlb3JSM
	tTQDJo/uSxSP2kTraA/yl+ANQvupNy6fRu20rnsKa7EFEjw7OPxfL0ZZy
X-Received: by 2002:a17:90b:33d0:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-32d43e11bcemr12961226a91.0.1757602240201;
        Thu, 11 Sep 2025 07:50:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiDHS8WTe48sZ+5y9L/B0ypbKllzVCvSYx+GkBixPPnAxR1xtVluwi00iOjWP7C4GYyo7pqA==
X-Received: by 2002:a17:90b:33d0:b0:32a:8b55:5b82 with SMTP id 98e67ed59e1d1-32d43e11bcemr12961197a91.0.1757602239708;
        Thu, 11 Sep 2025 07:50:39 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dd6307590sm2934648a91.16.2025.09.11.07.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:50:39 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Subject: [PATCH v4 00/13] (no cover subject)
Date: Thu, 11 Sep 2025 22:46:07 +0800
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALHgwmgC/5XOTW6DMBAF4KtEXteRZ2wK7ir3qLIw/mksBQw2o
 EQRd++AVGXTDavRm5HeNy9WfI6+sK/Ti2W/xBJTT0F9nJi9mf7H8+goMxRYCQ3AjXPcxTLczXN
 IeeJlHvYZUuajLZ9QcbpNFDuOQdTosTUoNaPGIfsQH7v2faV8i2VK+bnjC2zbzVEAqA85C3DBh
 TZKysZp6cNlnKONvT3b1LFNWvCvvaKX8Fg7UrvCVglZQw2huaRSzuNs7tTevQn5JhoUxwhJBL3
 fOqy8ldr+Q6zr+gsijr6+rgEAAA==
X-Change-ID: 20250911-add-displayport-support-for-qcs615-platform-2f072e2ba239
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602231; l=4013;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=PxQ+Nl+6gXCfV0SnVCZ6IaDcnEi2VND1S9/H0brbNM8=;
 b=ASVtpO3j3ss865EQa+slC1BIbpK4AuajgD50RsGYQ2UDxDcHtA5P/cICIkaBsEeXjJ2v15if3
 NeNejHOckv9DEB7lLy4re35wi+qcLTngu1WPzMW2V7v/JDgrFgx35Tf
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXwWh4vXlVoyuF
 y6/ZOuPmWWQovsNEGlocLB5xYxZ+EdAt5O2KnE7r10X2rpjyys2w+YAR9B3+u2sqIhtokQG65BP
 Ig87tlPvUQ9cS0+/aiLBH4F++wHRFMdm+1MahidydoVrWu8mEXL3JU0/7+kF0RSCbjYqV2QREnu
 fvYJ8SMogBeTvBa+JocFxBYe9R/3CG/lvIAI82Fsxl28BU5dn+r5bNj7kgHOhnhkp6xtK4ZE4MR
 mpBrZxP/2g0LTWHPPPD1Z+LHGhsbs9wIb2QKKPYN3aaFDAyLK+GNtMgdtl2AVvXKtfuidsJfk3a
 3Y2OW+LjcH6N2YphcKC7PdWE0G69buRaYjdpuV5skfzyMaZ7OK/Y5MdbpY0+hwlIxmiTGA/QDWn
 EQ3RbOx1
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c2e1c1 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=NhqbsNcZucgFEQMbMWwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: fMbVLGottFbtZ2RIkXhgkB0UcY4N2KCW
X-Proofpoint-ORIG-GUID: fMbVLGottFbtZ2RIkXhgkB0UcY4N2KCW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075042_942871_4B0CEB40 
X-CRM114-Status: GOOD (  13.06  )
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
eHUgWWluIDx4aWFuZ3h1LnlpbkBvc3MucXVhbGNvbW0uY29tPgotLS0KQ2hhbmdlcyBpbiB2NDoK
Ci0gRHJvcCBwYXRjaCB2M1swMS8xNCAmIDEzLzE0XSwgd2lsbCBzdXRibWl0IG5ldyBwYXRjaHNl
dHMgYmFzZWQgbXN0IGR0IGJpbmRpbmcgc2VyaWVzLgotIFVwZGF0ZSBtYWludGFpbmVyIG9mIHFj
b20scWNzNjE1LXFtcC11c2IzZHAtcGh5LnlhbWwgdG8gbXlzZWxmLgotIEFkZCBtaXNzaW5nIGF1
eCBhbmQgcGlwZSBjbG9ja3MuIFtEbWl0cnldCi0gRHJvcCBzZWNvbmQgVENTUiBwaGFuZGxlOyBy
ZWdpc3RlciBvZmZzZXRzIGFyZSBkZXNjcmliZWQgZGlyZWN0bHkuIFtEbWl0cnldCi0gQWRkIFVT
QkMgUEhZIHNlcmllcyByZWxhdGVkIGluaXRfbG9hZF91QSBjb25maWdzLiBbRG1pdHJ5XQotIERy
b3AgdjNbMDQvMTRdIHFtcF9waHlfdXNiY190eXBlIGRlZmluZSBhbmQgdXNlIGRwX3NlcmRlcyBv
ZmZzZXRzIHRvIGNvbmZpcm0gRFAgY2FwYWJpbGl0eSBbRG1pdHJ5XQotIFJlb3JnYW5pemUgc3Vi
LXBhdGNoZXMgYXMgc3VnZ2VzdGVkLgotIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC8yMDI1MDgyMC1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRm
b3JtLXYzLTAtYTQzYmQyNWVjMzljQG9zcy5xdWFsY29tbS5jb20vCgpDaGFuZ2VzIGluIHYzOgoK
LSBSZW5hbWVkIHFjb20scWNzNjE1LXFtcC1kcC1waHkueWFtbCBpbiB2MiB0byBxY29tLHFjczYx
NS1xbXAtZHAtcGh5LnlhbWwgaW4gdjMgZm9yIFFDUzYxNSBVU0IzK0RQIFBIWS4KLSBVcGRhdGVk
IHBhdGNoIHYzWzAyLzE0XSB0byByZXZpc2UgYmluZGluZyB0aXRsZSwgZGVzY3JpcHRpb24sIGFu
ZCBwcm9wZXJ0eSBvcmRlci4gW0tyenlzenRvZl0KLSBVcGRhdGVkIGNvbW1pdCBtZXNzYWdlcyBp
biBwYXRjaCB2M1swMS8xNF0gYW5kIFsxMy8xNF0gdG8gcmVmbGVjdCB0aGUgRFRTSSByZW5hbWUg
YW5kIGNsYXJpZnkgY29tcGF0aWJpbGl0eS4gW0tyenlzenRvZl0KLSBBZGRlZCBVU0IzK0RQIG1v
ZGUgaW1wbGVtZW50YXRpb24gaW4gcGF0Y2hlcyB2MyBbMDAz4oCTMDEyXSwgb3JnYW5pemVkIGlu
IGxvZ2ljYWwgY2h1bmtzLiBbRG1pdHJ5XQotIERyb3BwZWQgcGF0Y2ggdjJbMDMvMTNdIHRvIG1h
aW50YWluIGZ1bGwgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIFVTQkMuCi0gTGluayB0byB2
MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNzIyLWFkZC1kaXNwbGF5cG9ydC1z
dXBwb3J0LWZvci1xY3M2MTUtcGxhdGZvcm0tdjItMC00MmI0MDM3MTcxZjhAb3NzLnF1YWxjb21t
LmNvbS8KCkNoYW5nZXMgaW4gdjI6CgotIEFkZCBuZXcgYmluZGluZyBxY29tLHFjczYxNS1xbXAt
ZHAtcGh5LnlhbWwgZm9yIFFDUzYxNSBzdGFuZGFsb25lIERQCi0gU3BsaXQgRFAgUEhZIGRyaXZl
ciBpbnRvIHBhdGNoZXMgNC0xMSBieSBsb2dpY2FsIGNodW5rcyBbRG1pdHJ5XQotIFVwZGF0ZSBE
UCBQSFkgY29uZmlndXJhdGlvbiBmbG93IHRvIGFsaWduIHdpdGggUU1QIENvbWJvIFBIWSBpbXBs
ZW1lbnRhdGlvbiBbRG1pdHJ5XQotIFVwZGF0ZSBhbGwgaGV4IHZhbHVlcyB0byBsb3dlcmNhc2Ug
W0RtaXRyeV0KLSBSZW1vdmUgcmVkdW5kYW50IGNvbW1lbnRzIGluIERQIFBIWSBkcml2ZXIgW0ty
enlzenRvZl0KLSBSZW1vdmUgaW52YWxpZCBVU0JDIHR5cGUgZGVmaW5lIFtEbWl0cnldCi0gTW92
ZSBsYW5lX21hcO+8jCBtYXhfZHBfbGFuZXPvvIwgbWF4X2RwX2xpbmtfcmF0ZSBwYXJzaW5nIGxv
Z2ljIHRvIGRwX2xpbmsgW0RtaXRyeV0KLSBBZGQgVENTUi1iYXNlZCBtdXRleCBsb2dpYyBmb3Ig
RFAgYW5kIFVTQiBQSFkgY29leGlzdGVuY2UgW0RtaXRyeV0KLSBEcm9wIHBhdGNoZXMgNuKAkzgg
YW5kIHJlbW92ZSByZWxhdGVkIGJpbmRpbmcgcHJvcGVydGllcyBhcyByZWplY3RlZCB1cHN0cmVh
bQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTEyOS1hZGQt
ZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLXYxLTAtMDlhNDMzOGQ5M2Vm
QHF1aWNpbmMuY29tLwoKLS0tClhpYW5neHUgWWluICgxMyk6CiAgICAgIGR0LWJpbmRpbmdzOiBw
aHk6IEFkZCBRTVAgVVNCMytEUCBQSFkgZm9yIFFDUzYxNQogICAgICBwaHk6IHFjb206IHFtcC11
c2JjOiBSZW5hbWUgVVNCLXNwZWNpZmljIG9wcyB0byBwcmVwYXJlIGZvciBEUCBzdXBwb3J0CiAg
ICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBEUC1yZWxhdGVkIGZpZWxkcyBmb3IgVVNCL0RQ
IHN3aXRjaGFibGUgUEhZCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBRQ1M2MTUgRFAg
UEhZIGNvbmZpZ3VyYXRpb24gYW5kIGluaXQgZGF0YQogICAgICBwaHk6IHFjb206IHFtcC11c2Jj
OiBBZGQgcmVndWxhdG9yIGluaXRfbG9hZCBzdXBwb3J0CiAgICAgIHBoeTogcWNvbTogcW1wLXVz
YmM6IE1vdmUgcmVzZXQgY29uZmlnIGludG8gUEhZIGNmZwogICAgICBwaHk6IHFjb206IHFtcC11
c2JjOiBBZGQgRFAgUEhZIGNvbmZpZ3VyYXRpb24gc3VwcG9ydCBmb3IgUUNTNjE1CiAgICAgIHBo
eTogcWNvbTogcW1wLXVzYmM6IEFkZCBVU0IvRFAgc3dpdGNoYWJsZSBQSFkgY2xrIHJlZ2lzdGVy
CiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFkZCBUQ1NSIHBhcnNpbmcgYW5kIFBIWSBtb2Rl
IHNldHRpbmcKICAgICAgcGh5OiBxY29tOiBxbXAtdXNiYzogQWRkIERQIFBIWSBvcHMgZm9yIFVT
Qi9EUCBzd2l0Y2hhYmxlIFR5cGUtQyBQSFlzCiAgICAgIHBoeTogcWNvbTogcW1wLXVzYmM6IEFk
ZCBVU0IvRFAgbXV0ZXggaGFuZGxpbmcKICAgICAgZHJtL21zbS9kcDogbW92ZSBsaW5rLXNwZWNp
ZmljIHBhcnNpbmcgZnJvbSBkcF9wYW5lbCB0byBkcF9saW5rCiAgICAgIGRybS9tc20vZHA6IEFk
ZCBzdXBwb3J0IGZvciBsYW5lIG1hcHBpbmcgY29uZmlndXJhdGlvbgoKIC4uLi9iaW5kaW5ncy9w
aHkvcWNvbSxxY3M2MTUtcW1wLXVzYjNkcC1waHkueWFtbCAgIHwgIDExMSArKwogZHJpdmVycy9n
cHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgICAgICAgICAgICAgICAgICAgfCAgIDEwICstCiBkcml2
ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2xpbmsuYyAgICAgICAgICAgICAgICAgICB8ICAgNzEgKysK
IGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfbGluay5oICAgICAgICAgICAgICAgICAgIHwgICAg
NSArCiBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX3BhbmVsLmMgICAgICAgICAgICAgICAgICB8
ICAgNzggKy0KIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgICAgICAgICAgICAg
ICAgIHwgICAgMyAtCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtZHAtcGh5LXYy
LmggICAgICB8ICAgMjEgKwogZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYmMu
YyAgICAgICAgICAgfCAxMDg5ICsrKysrKysrKysrKysrKysrLS0tCiA4IGZpbGVzIGNoYW5nZWQs
IDExOTIgaW5zZXJ0aW9ucygrKSwgMTk2IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDhm
MjFkOWRhNDY3MDJjNGQ2OTUxYmE2MGNhOGEwNWY0Mjg3MGZlOGYKY2hhbmdlLWlkOiAyMDI1MDkx
MS1hZGQtZGlzcGxheXBvcnQtc3VwcG9ydC1mb3ItcWNzNjE1LXBsYXRmb3JtLTJmMDcyZTJiYTIz
OQoKQmVzdCByZWdhcmRzLAotLSAKWGlhbmd4dSBZaW4gPHhpYW5neHUueWluQG9zcy5xdWFsY29t
bS5jb20+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
