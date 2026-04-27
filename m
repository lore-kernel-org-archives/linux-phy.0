Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B431FF8861
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT6Mg/deLjTQr+S/k9I4h+NZiXCikIRD2BhJbtR4F0c=; b=NgHh/HSAwQu+lc
	IeoRqZcLQ26YjkmHPJSAp+dvR73Q4FQQxh96zRWRaI8H/OKFdyRDoQhK563iVvXD/kibUo8fsQ9no
	oEUSj8Otz/AHNOvsldDMcQEG/SZrh7i3mrXQZp9C3IQEb8Sj4yaQpzs6BfVGNthiKblRdg5TcYPw6
	52UQhFXCsoIzs+ylS1oLveYbyVecyv474+Weeidt5vYLisSZXSpmwvxdb/m1CLW9zE4t6CYEA+r+4
	RXg9aWslx51v6wUXqfWL1DAAqhmNP29GsoEjCw3A9opxJyBJ2m2jS4aS4Mq2zqfIF5uHFsn3FwXtm
	Ux35WscNcf1QWVVqHaeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZ8-0000000GH1Z-3QwQ;
	Mon, 27 Apr 2026 06:35:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZ7-0000000GH0x-01Bi
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63QMXikH3585237
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ez9CbcraMCzys8o937ycjyhc+fwq8fh4i95qoRSypAE=; b=WwzjYaFCRip1tRTg
	zN8/s0TL7eLSRezkSp622eWr+EkuPXLaqG7SX9v18AbWbZwZPgUGJcMtPBIN/ti/
	Xe/T8kSag8yJ9w7klvnhPHWOHz1ktNAvvHBWmXpRfJZV5dtKQpv6slrRpdIwUE2k
	bAFgVsGxqSlXb7pfpFYpj66rUSqhMWmMrvquqfYfptiH2KeO/4YPrsGnF5roIOPr
	LbRJc6AHqvhCcxbBWiFt1A1AuGtRG5WIetfjATim7kRetc4XsATqiJS39JdudwNr
	JsZHx1t6d7A3typDhSOmf9Sa1ALjNNURvF0SB4rRcDGz5f+h7PrK8LI+4g+A+fTW
	SG+R1Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpcdmp85-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8acd145817dso34893806d6.3
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271731; x=1777876531; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ez9CbcraMCzys8o937ycjyhc+fwq8fh4i95qoRSypAE=;
        b=QPJ6kpljF/KNHssqwO+wkQCQat3sZaFt/Rdc8t9oinSQOX38LthZq3ht8C51eee+PS
         SzYVtTeeYK28CMjZXPc0+lU9ZZ6g5gilqTsncVXNOdkkKbYOfOKRKs8p8g/XjCriAWu7
         DIxX2GczPvn72wTYBjVGAK4dzNAlTCaUMjcDjd4Bvh1cQypNo0DiDeoTLvMP2aQui3Nb
         rbFd8CuZvdz0oSUYCzHF/80I+/noPd4WUfqKpNOiPFL3MIP9nFYBrYJ9jt3QD1DXaeGZ
         xEL7hw6PSe3eDE+Wlly9giZ0yz+Yqg1LLmcjphVkkPJs089WvTM8fq94K3TSy1nZ/TJP
         WGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271731; x=1777876531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ez9CbcraMCzys8o937ycjyhc+fwq8fh4i95qoRSypAE=;
        b=qUbvG4/nnf3OUJuRe/2Blp4rSwVwaICtgmHhrd8Q+aPf9iLYf6Zn6X8P2Wyut3cPei
         cGXWZfX4itgXsbmdfj7ONPLPPTg2EZyy+VKj4/uqb3voKkpqWYtwpy0VAFnAdomM52BR
         kMkjvS+AJhxmqyKhKH7ixWrj+ZYINf6G83zp+9MATjYVOZDJ1+dQJ65kHnfWmuh0W5n0
         ysyHGDA+SVsu6WSWS3J8KU5GrwE+nEPo9cyYreZg3kKPKI7nkB40NXBDN+EXPsVMkvxj
         uZZxDhAOzqsq2mCzizJfvupy9dL+4wMhV80tjLUSY6ojgjKqQAzt/e2uUypyeBZ5ebuT
         SMYg==
X-Forwarded-Encrypted: i=1; AFNElJ91GncfrTSf5zAtG0dkWSorJ+1McjqgZOjxDNsw/DernQDj921w8dVbS6xQ1cXHU8vjwaVfovEkdVM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxu7W5F1f4OaWD8ScznwMHF/Ffnv2xKo3v5awyQpZ969phXxcC1
	QfafYWA+jnE5P8FE6ihi3+WAt9MwTlbkD4/pYuSNvSAd75H7XvzsxHYmgFwZYIgqQsf6NZD3a35
	xkkAnxpVCpOIbc8QW2bdm5FN/v7I011oo9WeIw8A2eHSANUNYL2Xv0Yy67pwSZyp7PAIG
X-Gm-Gg: AeBDiesUAPv3eOl+cuoF4cPwo3w1gXdEdbrfF3pb5j83H5c/Nl0YCN+1JVP+Qx+Ebsu
	hoetDNmr45hT/gRinY4n+tGMkBqneN05/OxUHVye/ciVOJ+5+6oFmFG06aUPC1ehvcBSpTMTx0I
	ZGinDgSjyXetBZx5ZLNkWO3H9rxRmzx1TmrRYMFILJMdRn/9I5jVgBgeKuAhceUSVzjCBUbnBmL
	PO4hfr4cNRYUkkR4ftCyYLJ98R3yQAVQ0KIZKqEaUdxAWhtXJkddjmAbu1yFA1di86oe1Y0deMY
	1557XnSpP2uBw8wRV8I1AMBjjnarJkZRB+zR0yrzg7HTJLsFhUFQXhj5a4ojfx9KQWIFoMoxgng
	5ZqWy+WB24bgz7RkjqpIjxjN/bJo9ygV1uG9Iou0G5j3nRsAD7drbRIIyQKN2tAdvjWemEqsmEb
	3xNNI2zPBJi/IJUScnYw==
X-Received: by 2002:a05:6214:590b:b0:8ac:ae56:b493 with SMTP id 6a1803df08f44-8b02810c139mr671021086d6.40.1777271731515;
        Sun, 26 Apr 2026 23:35:31 -0700 (PDT)
X-Received: by 2002:a05:6214:590b:b0:8ac:ae56:b493 with SMTP id 6a1803df08f44-8b02810c139mr671020746d6.40.1777271731106;
        Sun, 26 Apr 2026 23:35:31 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:30 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:35:19 +0800
Subject: [PATCH v5 1/5] phy: qcom: edp: Unify generic DP/eDP swing and
 pre-emphasis tables
MIME-Version: 1.0
Message-Id: <20260427-edp_phy-v5-1-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=3980;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=Fg3wV9TgWVv5u8ucAiklna4tkeUeVZmRlfG6VfBXnx0=;
 b=4aMB9c2y017pyM3zsrCgCqjBhc1orRHRVrwWiqxA37pUc948TsHRbjMOqG1C7yMsCh4o26TzM
 MfCtVKXCKkTAUpWwguOnqtLoJGVZFLncfP+Tvml+g+cT2B9gwiB6hGA
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX08vxUeB75Xy5
 f1DUraBSASQybplvFYiq1E/bcAY+Rn/MKScKspt1IdeJiINRIhyRqjfRRB1HiqsR2qp6KTnw+Hl
 yh4Wc8BJQ/Kgv2eCT8AYXgtkfayYoVCAKTz1p1anx0OetvBKLzpK7eY5ECqDU0wRQsO5qdijmVM
 sskuoavC/4sWHQddtTyA6NMIErIMrtm8qBF63PgnOisokL315NY/0+1Oyhwh9QzGw55WIJTgqkx
 tu3NSdje4yXRW//qGI01pqktjmCLkq8pdaK+OayeLvjpKlhcmkQtonbZVymLZx+aclji6cLA0In
 Ak6TH3ewGYxL1LNs6OvDbd2QlIHslEzGpsau4YF3Pog3gJpT6tfrq7gmDhjAenTaE1KQd474uNW
 wAR5Vm4UV/POAh2KJZNxPyJeTYQY9p71M83oLKPC+MeDEjnMV9T3pdWPMAKuZEFGc1xy597ogad
 23WBo1+Wh8F5MNs7WXQ==
X-Authority-Analysis: v=2.4 cv=N5IZ0W9B c=1 sm=1 tr=0 ts=69ef03b4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_hJh01-1qFuxGScrDK8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: xdXbYCDnMxupaLEjCLwybd4O35UNjQpv
X-Proofpoint-GUID: xdXbYCDnMxupaLEjCLwybd4O35UNjQpv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233533_126425_47667CE4 
X-CRM114-Status: GOOD (  12.90  )
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

VGhlIGN1cnJlbnQgZURQIGFuZCBEUCBzd2luZy9wcmUtZW1waGFzaXMgdGFibGVzIGRvIG5vdCBt
YXRjaCB0aGUgSFBHCnJlcXVpcmVtZW50cyBmb3IgdGhlIHN1cHBvcnRlZCBwbGF0Zm9ybXMsIGNv
cnJlY3QgdGhlIHRhYmxlIGFjY29yZGluZ2x5LgoKVGhlIGdlbmVyaWMgdGFibGVzIHdoaWNoIGNh
biBiZSBzaGFyZWQgYXMgZm9sbG93czoKCkRQIG1vZGXvvJoKCS1zYTg3NzVwL3NjNzI4MC9zYzgy
ODB4cC94MWU4MDEwMAoJLWdseW11cgoJLXNjODE4MHgKZURQIG1vZGUobG93IHZkaWZmKToKCS1n
bHltdXIvc2E4Nzc1cC9zYzgyODB4cC94MWU4MDEwMAoJLXNjNzI4MAoJLXNjODE4MHgKClRoZSBw
cm9wZXIgdGFibGVzIGZvciBTQzgxODBYIGFuZCBTQzcyODAgd2lsbCBiZSBhZGRlZCBpbiBhIGxh
dGVyIHBhdGNoLApzaW5jZSB0aGV5IG5lZWQgc2VwYXJhdGUgdGFibGUuCgpDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwpGaXhlczogZjE5OTIyM2NiNDkwICgicGh5OiBxY29tOiBJbnRyb2R1Y2Ug
bmV3IGVEUCBQSFkgZHJpdmVyIikKUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRt
aXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KU2lnbmVkLW9mZi1ieTogWW9uZ3hpbmcg
TW91IDx5b25neGluZy5tb3VAb3NzLnF1YWxjb21tLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1lZHAuYyB8IDQxICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCmluZGV4IDczNzJkZTA1YTBiOC4uMmFmM2Zk
NjM4MzJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwor
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwpAQCAtMTE2LDE3ICsxMTYs
MTcgQEAgc3RydWN0IHFjb21fZWRwIHsKIH07CiAKIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19o
YnJfcmJyWzRdWzRdID0gewotCXsgMHgwOCwgMHgwZiwgMHgxNiwgMHgxZiB9LAorCXsgMHgwNywg
MHgwZiwgMHgxNiwgMHgxZiB9LAogCXsgMHgxMSwgMHgxZSwgMHgxZiwgMHhmZiB9LAogCXsgMHgx
NiwgMHgxZiwgMHhmZiwgMHhmZiB9LAogCXsgMHgxZiwgMHhmZiwgMHhmZiwgMHhmZiB9CiB9Owog
CiBzdGF0aWMgY29uc3QgdTggZHBfcHJlX2VtcF9oYnJfcmJyWzRdWzRdID0gewotCXsgMHgwMCwg
MHgwZCwgMHgxNCwgMHgxYSB9LAorCXsgMHgwMCwgMHgwZSwgMHgxNSwgMHgxYSB9LAogCXsgMHgw
MCwgMHgwZSwgMHgxNSwgMHhmZiB9LAogCXsgMHgwMCwgMHgwZSwgMHhmZiwgMHhmZiB9LAotCXsg
MHgwMywgMHhmZiwgMHhmZiwgMHhmZiB9CisJeyAweDA0LCAweGZmLCAweGZmLCAweGZmIH0KIH07
CiAKIHN0YXRpYyBjb25zdCB1OCBkcF9zd2luZ19oYnIyX2hicjNbNF1bNF0gPSB7CkBAIC0xNTgs
NyArMTU4LDcgQEAgc3RhdGljIGNvbnN0IHU4IGVkcF9zd2luZ19oYnJfcmJyWzRdWzRdID0gewog
fTsKIAogc3RhdGljIGNvbnN0IHU4IGVkcF9wcmVfZW1wX2hicl9yYnJbNF1bNF0gPSB7Ci0JeyAw
eDA1LCAweDEyLCAweDE3LCAweDFkIH0sCisJeyAweDA1LCAweDExLCAweDE3LCAweDFkIH0sCiAJ
eyAweDA1LCAweDExLCAweDE4LCAweGZmIH0sCiAJeyAweDA2LCAweDExLCAweGZmLCAweGZmIH0s
CiAJeyAweDAwLCAweGZmLCAweGZmLCAweGZmIH0KQEAgLTE3MiwxMCArMTcyLDEwIEBAIHN0YXRp
YyBjb25zdCB1OCBlZHBfc3dpbmdfaGJyMl9oYnIzWzRdWzRdID0gewogfTsKIAogc3RhdGljIGNv
bnN0IHU4IGVkcF9wcmVfZW1wX2hicjJfaGJyM1s0XVs0XSA9IHsKLQl7IDB4MDgsIDB4MTEsIDB4
MTcsIDB4MWIgfSwKLQl7IDB4MDAsIDB4MGMsIDB4MTMsIDB4ZmYgfSwKLQl7IDB4MDUsIDB4MTAs
IDB4ZmYsIDB4ZmYgfSwKLQl7IDB4MDAsIDB4ZmYsIDB4ZmYsIDB4ZmYgfQorCXsgMHgwYywgMHgx
NSwgMHgxOSwgMHgxZSB9LAorCXsgMHgwYiwgMHgxNSwgMHgxOSwgMHhmZiB9LAorCXsgMHgwZSwg
MHgxNCwgMHhmZiwgMHhmZiB9LAorCXsgMHgwZCwgMHhmZiwgMHhmZiwgMHhmZiB9CiB9OwogCiBz
dGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3
aW5nX3ByZV9lbXBoX2NmZyA9IHsKQEAgLTE5MywyNyArMTkzLDYgQEAgc3RhdGljIGNvbnN0IHU4
IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjRbNF0gPSB7CiAJMHgwMSwgMHgwMSwgMHgwMiwgMHgwMCwK
IH07CiAKLXN0YXRpYyBjb25zdCB1OCBlZHBfcHJlX2VtcF9oYnJfcmJyX3Y1WzRdWzRdID0gewot
CXsgMHgwNSwgMHgxMSwgMHgxNywgMHgxZCB9LAotCXsgMHgwNSwgMHgxMSwgMHgxOCwgMHhmZiB9
LAotCXsgMHgwNiwgMHgxMSwgMHhmZiwgMHhmZiB9LAotCXsgMHgwMCwgMHhmZiwgMHhmZiwgMHhm
ZiB9Ci19OwotCi1zdGF0aWMgY29uc3QgdTggZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1WzRdWzRd
ID0gewotCXsgMHgwYywgMHgxNSwgMHgxOSwgMHgxZSB9LAotCXsgMHgwYiwgMHgxNSwgMHgxOSwg
MHhmZiB9LAotCXsgMHgwZSwgMHgxNCwgMHhmZiwgMHhmZiB9LAotCXsgMHgwZCwgMHhmZiwgMHhm
ZiwgMHhmZiB9Ci19OwotCi1zdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fZWRwX3N3aW5nX3ByZV9l
bXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSA9IHsKLQkuc3dpbmdfaGJyX3Ji
ciA9ICZlZHBfc3dpbmdfaGJyX3JiciwKLQkuc3dpbmdfaGJyM19oYnIyID0gJmVkcF9zd2luZ19o
YnIyX2hicjMsCi0JLnByZV9lbXBoYXNpc19oYnJfcmJyID0gJmVkcF9wcmVfZW1wX2hicl9yYnJf
djUsCi0JLnByZV9lbXBoYXNpc19oYnIzX2hicjIgPSAmZWRwX3ByZV9lbXBfaGJyMl9oYnIzX3Y1
LAotfTsKLQogc3RhdGljIGNvbnN0IHU4IGVkcF9waHlfYXV4X2NmZ192NVtEUF9BVVhfQ0ZHX1NJ
WkVdID0gewogCTB4MDAsIDB4MTMsIDB4YTQsIDB4MDAsIDB4MGEsIDB4MjYsIDB4MGEsIDB4MDMs
IDB4MzcsIDB4MDMsIDB4MDIsIDB4MDIsIDB4MDAsCiB9OwpAQCAtNTY0LDcgKzU0Myw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9lZHBfcGh5X2NmZyBzYTg3NzVwX2RwX3BoeV9jZmcgPSB7
CiAJLmlzX2VkcCA9IGZhbHNlLAogCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2ZnX3Y1LAogCS52
Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjQsCi0JLnN3aW5nX3ByZV9lbXBoX2Nm
ZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSwKKwkuc3dpbmdfcHJlX2VtcGhfY2Zn
ID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAogCS52ZXJfb3BzID0gJnFjb21fZWRwX3Bo
eV9vcHNfdjQsCiB9OwogCkBAIC05NDUsNyArOTI0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBw
aHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX3Y4ID0gewogc3RhdGljIHN0cnVjdCBxY29tX2Vk
cF9waHlfY2ZnIGdseW11cl9waHlfY2ZnID0gewogCS5hdXhfY2ZnID0gZWRwX3BoeV9hdXhfY2Zn
X3Y4LAogCS52Y29fZGl2X2NmZyA9IGVkcF9waHlfdmNvX2Rpdl9jZmdfdjgsCi0JLnN3aW5nX3By
ZV9lbXBoX2NmZyA9ICZlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192NSwKKwkuc3dpbmdfcHJl
X2VtcGhfY2ZnID0gJmVkcF9waHlfc3dpbmdfcHJlX2VtcGhfY2ZnLAogCS52ZXJfb3BzID0gJnFj
b21fZWRwX3BoeV9vcHNfdjgsCiB9OwogCgotLSAKMi40My4wCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
