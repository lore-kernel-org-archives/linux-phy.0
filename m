Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FEF0C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Amc9jNo4Ytp9p3eOdWSBBt75KB7qZJRow6TimP2lCaM=; b=17nKohF49xNIlW
	chjIznpKK2z59eKebLKrMsEuP+7/ambWGxrnLgNVucOfB7nKhVnPCzbU5mFZ5oMso7aUBZfDe1fkF
	n8qP9B+2s6q3oKrYw3ydZ5JOWEFzVrc7u5rsF6ufRDotWQJSdU/IsqE8gIAG/gI7nqEk0EQEUchHH
	dIyPMnCcaBrIBcjqGiXOGy84hPC1Kv+5mesUFuYzwnuSspx3239/DxOa5Rpkd8g/wSphLckkRp9QO
	0++QenCeWevy8C7HWsKIG3wqroQg4qfUe9RF5hklWGYF1pI7zpCpdFIRXSI5CkGSaUdQEWK4yRqXV
	nXfKXcyoKgPoPN+YFkVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9wx-0000000GOQI-0Mf3;
	Wed, 12 Aug 2026 14:28:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu9wu-0000000GOPj-46Kf
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 14:28:58 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67CDbTTt320208
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 14:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rRTRNjqnMuQmJhIBf/iDfReXyCTGBmAaSP7mRWJ3Hb0=; b=oHmaryBQeIzxliC/
	6lwV34HNXaETyWDqwvcSZbxwQC4GEPtqZqdmaNqv1wvs5vzzbRRaWokO21Wo5TXU
	XZNtWpeGD+CmDSZBVUPfSEKmIyvFrmsbQAORZdmZr7iYKhvaTG3BjbHZye+Wa4rj
	8YrPByIsDFPx3U2a+QzmMNUDEHE/GW/HS7qDyGiTy4uuotgnMrvjXUFlRKmgzdxR
	9CYdvT0wP7MAqMwQUHe3mwANF7FH80d4xWGzhwx2TV1/m6Da3E9GpKzwet6SGW0j
	xH77C+4rNCQpXDx0PmTTqQ17VTjCAgUgPIM4ecREDSZGLvT2nInW59/KmwvgGGxe
	NdciMQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g0sk40b1x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 14:28:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52b4f6ac06aso18021591cf.1
        for <linux-phy@lists.infradead.org>; Wed, 12 Aug 2026 07:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786544934; x=1787149734; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rRTRNjqnMuQmJhIBf/iDfReXyCTGBmAaSP7mRWJ3Hb0=;
        b=Rze/Eqqy1Mh5us6LX9I0VPR19LqmxW356Zp5H9MN93PkWvZYDA8Nd5ddd/ncXj2R9S
         19Il3H15WMkHm1L8QGZssuG8Thi8z+KV6HvTf+HcnmSoSRXyWv3ALB1cTfnABy7nRRzV
         cXfPbwmz+5Lp1j5ZHc5DHERX0l9q4XJrY0za/k8fRUNZkUdousDfjtw3pJN5K+1c7AJa
         dDDGiQsNPk6aMbyWsLRSVhEpsWFVoTnHHspac3tiVF/X2bLxOyz9Z0YOBFmiNWFqEIm9
         vCo5QlQc7pe+q3SZua0veCRA8eiyNmjp8OL5DhYEGNsRL+sXKrsnE9J81As+/ImgX76k
         iBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786544934; x=1787149734;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=rRTRNjqnMuQmJhIBf/iDfReXyCTGBmAaSP7mRWJ3Hb0=;
        b=AXnotqt1O1cyw39mxQpCuOeuHOSHOiwODSlDI1Ex0l79keBMA4HqZNSU0O5Iap8hfU
         MBw2B2IXc2DdP/TMZVOFpn3xnN/MHwNfsUS1JZWgVzHMmM2zg5GpgyLFPg3U4Vh0f52N
         bHkYWKpB3kp9Yi8EfXrdHhgdp/ahbE7y98EytrZO6Qo3BT9Dk3c4LIx13QMLj+0Wx3qt
         4MlinL5nvmAPeGdI5ouaaqf3PRAloK1wijHTddUi/LRj1Vn2nadXr50RcCEBl1dm/rX/
         BthX4SK+TYtvjrtnkGqWc9dKXZLXOz9Ei5LfzgQ7yJ0rg6uHCvu6MIb+SRma5LQTIhxh
         QUvQ==
X-Forwarded-Encrypted: i=1; AHgh+RrOgbbdkoTT7VIl+vNJgf+yjbq0DeTBlr+DvawarZXeybkOaTc0k867yu73DUdzMTNjY7LatfoTUbQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh+pIZhCYhSI0FwoTaJmuUzIcfAgprm9TSAkTpjthXe2d+vpUX
	0b106IecsUw974yagRJ0tDefXZ94up429VNgeJSzREegMJU6mfkWwsT0RB4reD8kQcmYDgmhaqI
	Svf2qXyo8ZTLQIseY3rLFlpiAmlFhAfMbFmg72ASS8U6H7t3WNHK/bCJUdgOllxBPqExX
X-Gm-Gg: AR+sD10QQP3JRfQD8wJLB2d6t1NHuwGINuvx0bs0JgqfBPQhbzv5UnK1ZtskpK9vLKh
	x4tsFDIK7SBM/QZpRSxxnceMED3105E4B0BIaHGXBzfX6TwWizhbCNj6HG4yfrUILtg4wMUZcX7
	pGdCm5UcMGI1zOMa65tpiGXQKgP+QmO3CWW1p4xh0/3Q+hUrojJci8Va/kkv7OaRYHHGsjM9w38
	9GzrefBE7FczOHoYgwnXHEqhnPBv+caz+IhIvWe76OysBDPx6am9UOhkttfG2Laknfx3AiE+FBv
	jzkusliq9FuivsClW3gNe/WQvZhViMQDrAYEvW2MqMO69L8t4FHxbRTHLJk6+woyNra0fL/zN7n
	jz8wISZ3eFd25Oqi9fEYblJnqT0ekQR6DEEPGEjnwHUGYl08WmtQggt5kabKd8RMMKhcoKzNIzD
	nMeSnrOAf4xXHt
X-Received: by 2002:a05:622a:4d8e:b0:51c:257c:8166 with SMTP id d75a77b69052e-52d6482e3d6mr47449731cf.33.1786544934507;
        Wed, 12 Aug 2026 07:28:54 -0700 (PDT)
X-Received: by 2002:a05:622a:4d8e:b0:51c:257c:8166 with SMTP id d75a77b69052e-52d6482e3d6mr47448981cf.33.1786544933971;
        Wed, 12 Aug 2026 07:28:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a107d20977sm5067671fa.15.2026.08.12.07.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 07:28:52 -0700 (PDT)
Date: Wed, 12 Aug 2026 17:28:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 2/5] phy: qualcomm: hdmi-28lpm: provide dynamic
 configuration
Message-ID: <w6mq6a63mjzhjirvvgetcdptutkq3upa5v5kmdcezjke6rhkm3@lctdutlbnbud>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
 <20260513-fd-hdmi-phy-v9-2-ca98c72f1f9f@oss.qualcomm.com>
 <qxuzipnza3tzoig7xp3653vcqwgubf6zerzbgdmx5h6acof7zm@quy7xzjml7kn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <qxuzipnza3tzoig7xp3653vcqwgubf6zerzbgdmx5h6acof7zm@quy7xzjml7kn>
X-Proofpoint-GUID: tdRszkIin04MPs1UaaiEA3v7wTFzr3S5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEyMDExOCBTYWx0ZWRfX47/moXMYc+Nh
 OBH4x6QVd1YhXowqMmKKwhoDOgrGsg6DXcWnV0rtlm29WzjGt0bFvhVPm2VAN3/1qaPcNwZnLGC
 KTC29UVy70pHtEu4zIAmrTHa6CPbTLuxaiGB7Xt3diJhf6ErSEzJsFCzoOGGaPG2QcJKFvkCKnT
 M/Ih/BP1PxKBUYwqWkXoKZYGq0/lTVwWpmwAjAJ0pJDTLdfbDnKm/pl6U2aVEbp0F7ku2wBab3w
 irxIczxsMEjFayjZ92P/lgWO8IpYf4sUy47wyys2SJMfdKRTstWgoIWmZZtO8346glRBOav7f0r
 1/6C4vAbn7p/vlCSWzcaVVx0CKd+R8NN4XYZNzhDSAXSRdudKL5/UvazDd0eM0PziuJKUaUg8z7
 G6NOUq4BNSCJNxWxssWoP+VbheEhw5rZsnFm/FBDtdz5KZYmV11N+OfXZmHwSrjVHHd9qRfWey2
 Kw7bolNC0attv3+4J/A==
X-Authority-Analysis: v=2.4 cv=E8n9Y6dl c=1 sm=1 tr=0 ts=6a7c8327 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=eL-OflJxe-d9IbCPJmsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEyMDExOCBTYWx0ZWRfX0AzKO46mKcLo
 rBSUIuofIVA8bkDmArBJDX4EoxyJWllVnWdWaXKBJ4QOPHa7q2f+nKtsq/a5Cm63oMesYd+0STT
 Vpt+cGA9QeAOp5bqwGvZL/W6e7VuRA8=
X-Proofpoint-ORIG-GUID: tdRszkIin04MPs1UaaiEA3v7wTFzr3S5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-12_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608120118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_072857_021173_AA00CB39 
X-CRM114-Status: GOOD (  16.99  )
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

T24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgMDM6NTE6MTZQTSArMDIwMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgTWF5IDEzLCAyMDI2IGF0IDA5OjE0OjA1UE0gKzAzMDAs
IERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPiBSZXBsYWNlIGZpeGVkIHZhbHVlIGNvbmZpZ3Vy
YXRpb24gdGFibGVzIHdpdGggdGhlIHZhbHVlcyBjYWxjdWxhdGVkIGF0Cj4gPiB0aGUgcnVudGlt
ZS4gSW4gc29tZSBjYXNlcyB0aGUgdmFsdWVzIG1pZ2h0IGRpZmZlciBmcm9tIHRoZSBvcmlnaW5h
bAo+ID4gdmFsdWVzLiBUaG9zZSB3ZXJlIHZhbGlkYXRlZCBvbiB0aGUgSUZDNjQxMCBib2FyZC4K
PiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPgo+IAo+IE9uZSBuaXQgYmVsb3cuIFdpdGggdGhhdCBmaXhlZCwK
PiAKPiBBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1Ab3NzLnF1YWxjb21tLmNvbT4KPiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLWhkbWktMjhscG0uYyB8IDMyNSArKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMDQgaW5zZXJ0aW9ucygrKSwgMjIxIGRlbGV0aW9ucygt
KQo+ID4gCj4gPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBwbGxfcmF0ZSAqcWNvbV9oZG1pXzg5NjBf
cGxsX2ZpbmRfcmF0ZSh1bnNpZ25lZCBsb25nIHJhdGUpCj4gPiArc3RhdGljIGlubGluZSB2b2lk
IHdyaXRlMTYodTE2IHZhbCwgdm9pZCBfX2lvbWVtICpyZWcpCj4gCj4gTm8gJ2lubGluZScga2V5
d29yZCBpbiAuYyBmaWxlcyBwbGVhc2UuCgpXaHk/Cgo+IAo+IC0gTWFuaQo+IAo+IC0tIAo+IOCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApX
aXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
