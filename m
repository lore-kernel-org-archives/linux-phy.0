Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E4BEC83F27
	for <linux-phy@archiver.kernel.org>; Sat, 19 Jul 2025 09:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwLmyUggo4XqffIEj90Lpez3Gy9d+7B338hWVK/DIOI=; b=gjvdrZpghmjrwF
	19KIiMSTvtdus8fwujSYXH/pmB5PZ/eSP03IWjJrzIwyPXEnN2INnZ8sdxYvQqn+ATcbpzyJbFEa0
	wav4BMl/mWDoqLT5EbLiv/01MFqXLjak/p103a/bB/D5OFI+KYScc2xq63hJcd58/0neig0Y6m3un
	abEFf9k18WId2/qWDKZgPPzEqkY/dWi8pVEhOvOW/3d/LDGwIDgPJxXYJliPjVNNBHD5CFqijqtwZ
	vd1Ak7S01ko2nCbrEOINjPRdHxUyNGc0mUqqyGFc5nYuUZOuU9l5nt7CTLXVtlrsw8jcS7KP3N2tl
	QgUqWNlvuWN5sbwbS+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud46f-0000000E6dd-09hP;
	Sat, 19 Jul 2025 09:43:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud46d-0000000E6dW-2ea2
	for linux-phy@bombadil.infradead.org;
	Sat, 19 Jul 2025 09:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=rhgfcFJFu0pycjGyM1cFEjZ0PRIhr6IT98FgwjCWEYk=; b=DgeR18R7VLTdzlGVhVIxVEE49m
	raQK+0jE1y84oiApyfpIu8jPJNuCK3JDs9B/J/Pv3rfyUMPU+Ee4QkV/Hw3gIKgJzhxOhbHEN51Nu
	N8SS8LHkb9ixqBN5arO9SK0g3Qa8cBRWCIQlgg0HvVYvI1Ef0okcJbxxgmjPwqPpCGjuAu5175I5z
	QVoJMBMlqQZByVqEBvyhrJ43UOuVyNdbc7g1W/x5CjgtoW4Mjacq1s6rz3TP02a6Zx9jp+dFtMq79
	lWuvtQv3y/qgRiSn3rQL4KzGySg3UHIRtw4FXvGSA6ufP7aSXxZZ6Jbp8qM08SlloIMl3/ET1TsEV
	K659moQA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud46Z-0000000AhyD-3apv
	for linux-phy@lists.infradead.org;
	Sat, 19 Jul 2025 09:43:46 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4Bmqf004245
	for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 09:43:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rhgfcFJFu0pycjGyM1cFEjZ0PRIhr6IT98FgwjCWEYk=; b=eIKe/XQW+VCrw6qy
	YDZuIu71jU6krVAEG2ro//VgSU2zD6oREy2R73F5f006S9h81k8XEGWAIURic6/s
	3C/z2ibBhsgp0kMODRuAAN+JBFcjgvxv/koBXdeEy39ebHbJAxNJqDY17Gwpojwq
	f/KI17OGkh0tUZ4fhv39qWLu7OlGVjfbVkD0m57Ao03Sn0UGqG6EhvTY1rU6Coce
	RoIwuwbAHtSCf3oPsN5jdsd1aMnjD/beax6buRrZfJimzhSvAS3+kcO7eCbWRKYN
	cXCct5kYpWcudSGRIiTgogUiLLa+1MOoQLpfnConsFxieo1+CKhVwXaferS3JKCf
	avz83w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044d8ee4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 09:43:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e237c2f4ddso387137885a.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Jul 2025 02:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752918217; x=1753523017;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhgfcFJFu0pycjGyM1cFEjZ0PRIhr6IT98FgwjCWEYk=;
        b=lLXkPHo7+qLyAV/ngf0KoqXwO7xK3Dvy3ev1RWLT0VHOSSvWosKbbpCckMOtT7lOlo
         AOieLfDpT/oYh1x5W2AZ+EwIu8anWwgFD/avwizB0v3Wc4ffB7q5AFszMl3E8+fQRY2c
         c3puJ+RbKDH2ueKbVHhZs/rFcEM/RUHWp5/xZu0bOG5uexHcyK297OkcTL+OYj40BQm4
         CcI22jJvi3Njh5AMYrkZ5ODrK4DAhQ2qjuSgS/y92t9RZ4gsq7H5FCIaGzydUfQa8/B9
         Bzxxn9dvXitj9mk7ck6HIDNBaNK+e8sXgCPrhrXfAb86Ef33gVIe9yP4D4mWRxif8+we
         tJPg==
X-Forwarded-Encrypted: i=1; AJvYcCX0t6ETOyNHpPioemKaUfxenoKUJxPBbc+UvDqoYURQQo60DQE3QPW/KW5ao5GI3n+iKbCrjdyPAU0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0dge4tAygFP43oFM+EX9Z1ngqow69K06nv6+Fflo8uhAC7x1Z
	gUD01y2C9Gp5m2tJ2XT0QjSC9UkAi7MkcJkBbXvz9lv1yGxuq8huim6wV/VQJsRlOjyg4AGzkO+
	j3AGoP/+kc+jaBJoxu0ea8g1n6YIy+7DNU5VMhk8M6mGs0SkVC7gzBlwZjUR0/nPAxsbS
X-Gm-Gg: ASbGncvA6FfxQvK+cQjocJIh+j4Y+H3uYD72ZKYwCEmrawPDa4y/dA3MR1pCAkaxZ7r
	zwOHd6qGb+qY09Ig4SanH+BfRW2K6R2xI6ep2vGpIaI+M+ZINTxVfNJyyvhM+B5+HRxdWzo/hNP
	yKttCLeK6DptxrFZFSk4w1l69LlWRLQ9UtIeLyYrtJ5jG9K7blAndcIfn3/lB/+Bpx44xRj+v2i
	Qy4JuVrq+BN2mCVSwsGl5Js1vJpOIN/wawLYOaBUgpkPn5P/5G3Ovgd1Cqwx0Jkf9/G+Tc3hEj3
	5wnG+tSsyEFZlPB2SHDp8QPxq8Cn3PXzANM6w+KPgo0Nj9bwb3b8gcownHUy6Dr2VFDuOqdTtkS
	yXB/CN/7OHXExUa3SK1NABhk8ElclvfpIuG/o/kmLE490g36fnb8e
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr834617885a.34.1752918217103;
        Sat, 19 Jul 2025 02:43:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO4TN2m1HCMk2uK61roXdJAndfjxoSfPKSTjVyKPnhMXeMW5zR1fepHcMLF91nfBnN6lMC7g==
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr834614885a.34.1752918216533;
        Sat, 19 Jul 2025 02:43:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d7c7basm652746e87.94.2025.07.19.02.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 02:43:35 -0700 (PDT)
Date: Sat, 19 Jul 2025 12:43:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
Message-ID: <w66xyhu5w7ajpkennvj24cad4j6izvapsp3reyla7iui2jdgkx@d43b6z3qw5tj>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
 <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
 <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687b68ca cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=YZjHnbvoZT85EzRjquwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: P0W-doKQIwJ3DpQJI7rHuXY2vP-RQeCy
X-Proofpoint-ORIG-GUID: P0W-doKQIwJ3DpQJI7rHuXY2vP-RQeCy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDA5NiBTYWx0ZWRfXzLikO8ipX122
 mo+6riC2JGtkjq/5hgYyTssfYWa4LBc/M2S+2GqFxHcX3Wl22hgbcvhqfvjO0yL7W3NIZ403YnF
 26XYT5PpExzOdCl8OePlrGujAQ1T6G0VMoy0CnwX7HgEnJMzgYd+cEnyPxRLAVWQwaBfoQR+Aog
 b5PBx8L7MWXAiKDOHhIkvlbCCchIV3/I+q5bEkH7XYuHya6tMK+6NJy5KoUQz8wF4UDq1W6HJcT
 4vevS5/gVJMAcMZShxZZRpg9/Fi51x/BvFNfWeQ+IO3vEQySMOhpFBYzeIlynjmi3+2f8zH2njf
 I4VNpk6FBmSHAtOw8DrZ2vgkYNbzGZKImf3LP1pcjJgklNmZz4DQ72Kyuz6NMhSkR0hTCZwI7zu
 PnryQO0v2vhGgFmQ0zCMxTlCcATyE746nAIxL4N5y+bc0yaNWCPB73s2qkSTIaVpaawdN2tP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_104344_434712_7862D500 
X-CRM114-Status: GOOD (  26.58  )
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

T24gV2VkLCBKdWwgMDksIDIwMjUgYXQgMDU6MTY6MDJQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3Jv
dGU6Cj4gCj4gCj4gT24gNS8yOC8yMDI1IDQ6NDkgQU0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4g
PiBPbiAxMi8zLzI0IDM6MDcgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4gT24gVHVl
LCBEZWMgMDMsIDIwMjQgYXQgMDQ6MTM6MjJQTSArMDgwMCwgWGlhbmd4dSBZaW4gd3JvdGU6Cj4g
Pj4+Cj4gPj4+Cj4gPj4+IE9uIDExLzI5LzIwMjQgOTo1MyBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPiA+Pj4+IE9uIEZyaSwgMjkgTm92IDIwMjQgYXQgMDk6NTksIFhpYW5neHUgWWluIDxx
dWljX3hpYW5neHV5QHF1aWNpbmMuY29tPiB3cm90ZToKPiA+Pj4+Pgo+ID4+Pj4+IEFkZCBhIG1l
Y2hhbmlzbSB0byByZXRyeSBMaW5rIFRyYWluaW5nIDIgYnkgbG93ZXJpbmcgdGhlIHBhdHRlcm4g
bGV2ZWwKPiA+Pj4+PiB3aGVuIHRoZSBsaW5rIHRyYWluaW5nICMyIGZpcnN0IGF0dGVtcHQgZmFp
bHMuIFRoaXMgYXBwcm9hY2ggZW5oYW5jZXMKPiA+Pj4+PiBjb21wYXRpYmlsaXR5LCBwYXJ0aWN1
bGFybHkgYWRkcmVzc2luZyBpc3N1ZXMgY2F1c2VkIGJ5IGNlcnRhaW4gaHViCj4gPj4+Pj4gY29u
ZmlndXJhdGlvbnMuCj4gPj4+Pgo+ID4+Pj4gUGxlYXNlIHJlZmVyZW5jZSBjb3JyZXNwb25kaW5n
IHBhcnQgb2YgdGhlIHN0YW5kYXJkLCBkZXNjcmliaW5nIHRoaXMgbG93ZXJpbmcuCj4gPj4+Pgo+
ID4+PiBQZXIgRGlzcGxheVBvcnQgMS40YSBzcGVjaWZpY2F0aW9uIFNlY3Rpb24gMy41LjEuMiBh
bmQgVGFibGUgMy0xMCwgd2hpbGUgdGhlIHN0YW5kYXJkIGRvZXNuJ3QgZXhwbGljaXRseSBkZWZp
bmUgYSBUUFMgZG93bmdyYWRlIG1lY2hhbmlzbSwgaXQgZG9lcyBzcGVjaWZ5Ogo+ID4+Cj4gPj4g
QW55dGhpbmcgaW4gRFAgMi4xPwo+ID4+Cj4gSW4gdGhlIERQIDIuMSBzcGVjLCBtYWlubHkgb24g
c2VjdGlvbiAnMy42LjcuMiA4Yi8xMGIgRFAgTGluayBMYXllciBMVFRQUiBMaW5rIFRyYWluaW5n
IE1hbmRhdGVzJywgZGVmaW5lZCAnTFRUUFIgc2hhbGwgc3VwcG9ydCBUUFM0Jy4KPiBUaGUgb3Ro
ZXIgcGFydHMgc2VlbXMgc2ltaWxhciB0byB0aGUgMS40IHNwZWMuCj4gPj4+IC0gQWxsIGRldmlj
ZXMgc2hhbGwgc3VwcG9ydCBUUFMxIGFuZCBUUFMyCj4gPj4+IC0gSERSMi1jYXBhYmxlIGRldmlj
ZXMgc2hhbGwgc3VwcG9ydCBUUFMzCj4gPj4+IC0gSERSMy1jYXBhYmxlIGRldmljZXMgc2hhbGwg
c3VwcG9ydCBUUFM0Cj4gPj4+IFdoaWxlIHRoZXNlIGNhcGFiaWxpdGllcyBhcmUgZXhwbGljaXRs
eSBkZWZpbmVkIERQQ0QgZm9yIHNpbmsgZGV2aWNlcywgc291cmNlIGRldmljZSBjYXBhYmlsaXRp
ZXMgYXJlIGxlc3Mgc3RyaWN0bHkgZGVmaW5lZCwgd2l0aCB0aGUgbWluaW11bSByZXF1aXJlbWVu
dCBiZWluZyBzdXBwb3J0IGZvciBUUFMxIGFuZCBUUFMyLgo+ID4+PiBJbiBRQ1M2MTUgRFAgcGh5
IGlzIG9ubHkgc3VwcG9ydGluZyB0byBIQlIyLCB3ZSBvYnNlcnZlZCBhIGNyaXRpY2FsIGludGVy
b3BlcmFiaWxpdHkgc2NlbmFyaW8gd2l0aCBhIERQLT5IRE1JIGJyaWRnZS4gV2hlbiBsaW5rIHRy
YWluaW5nIGF0IFRQUzQgY29uc2lzdGVudGx5IGZhaWxlZCwgZG93bmdyYWRpbmcgdG8gdGhlIG5l
eHQgbG93ZXIgdHJhaW5pbmcgcGF0dGVybiBzdWNjZXNzZnVsbHkgZXN0YWJsaXNoZWQgdGhlIGxp
bmsgYW5kIGRpc3BsYXkgb3V0cHV0IHN1Y2Nlc3NmdWxseS4KPiA+Pgo+ID4+IEFueSBvdGhlciBk
cml2ZXIgZG9pbmcgc3VjaCBUUFMgbG93ZXJpbmc/IE9yIG1heWJlIHdlIHNob3VsZCBiZQo+ID4+
IHNlbGVjdGluZyBUUFMzIGZvciBIQlIyLW9ubHkgZGV2aWNlcz8KPiA+IAo+IFRoaXMgbG9naWMg
aXMgcG9ydGluZyBmcm9tIHF1YWxjb21tIGRvd25zdHJlYW0sIAoKSG9wZWZ1bGx5IGEgZG93bnN0
cmVhbSBoYXMgc29tZSBzZW5zaWJsZSBjb21taXQgbWVzc2FnZSB3aGljaCBkZXNjcmliZXMKdGhl
IGlzc3VlIGFuZCB0aGUgY29uZmlndXJhdGlvbiB0byByZXByb2R1Y2UgaXQ/Cgo+IEZvciBvdGhl
ciBkZXZpY2UsIG9ubHkgZm91bmQgaW4gc29tZSBvbGRlciBUeCBjaGlwcyBsaWtlIGk5MTXvvIhp
bnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuKSB1c2VkIHRoZSBtYXhpbXVtIGhhcmR3YXJlLXN1cHBv
cnRlZCBwYXR0ZXJucywgYnV0IG5vdCBsb3dlcmluZy4KPiAKPiBBY2NvcmRpbmcgdG8gdGhlIGRl
c2NyaXB0aW9uIGluIERQQ0QgdGFibGUgMi0yMzIgMDAzaCwgRnJvbSB0aGUgRFAgc3BlYyBwZXJz
cGVjdGl2ZSwgaXQgYXBwZWFycyB0aGF0IGFsbCBzdXBwb3J0ZWQgY2FzZXMgc2hvdWxkIHByZWZl
cmFibHkgYWRvcHQgVFBTNCwgYXMgaXQgaXMgbW9yZSByb2J1c3QuCgpJZiBvdGhlciBkcml2ZXJz
IGRvbid0IHBlcmZvcm0gdGhpcyBraW5kIG9mIGxvd2VyaW5nLCBJJ2QgcHJlZmVyIGlmIHdlCmRv
bid0IHBlcmZvcm0gaXQgdG9vLgoKPiAnRFBSWHMgc2hvdWxkIHN1cHBvcnQgVFBTNCBhbmQgc2V0
IHRoaXMgYml0LCByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIERQUlggc3VwcG9ydHMgSEJSMyBi
ZWNhdXNlIFRQUzQgaXMgbW9yZSBjb25kdWNpdmUgdG8gcm9idXN0IGxpbmsgZXN0YWJsaXNobWVu
dCB0aGFuIFRQUzIgYW5kIFRQUzMuCj4gMCA9IFRQUzQgaXMgbm90IHN1cHBvcnRlZC4KPiAxID0g
VFBTNCBpcyBzdXBwb3J0ZWQgKHNoYWxsIGJlIHN1cHBvcnRlZCBmb3IgZG93bnN0cmVhbSBkZXZp
Y2VzIHdpdGggRFBDRCByMS40LCBleGNlcHQgZm9yIGVEUFJYcykuJwo+IAo+IEFsdGhvdWdoIG1h
eGltdW0gY2FwYWJpbGl0eSBvZiBRQ1M2MTUgaXMgSEJSMiwgYnV0IHRoZSBhY3R1YWwgcGF0dGVy
biBzdXBwb3J0cyBUUFM0LiAKPiBGcm9tIHB1cmUgZGVzaWduIHBlcnNwZWN0aXZlLCBpdCB3b3Vs
ZCBiZSBjbGVhbmVyIHRvIGRyb3AgdGhpcyBsb3dlcmluZyBpbiBuZXh0IHBhdGNoLiAKPiA+IEJ1
bXAsIHRoaXMgcGF0Y2ggbG9va3MgaW50ZXJlc3RpbmcgYW5kIEknZCBsaWtlIHRvIHNlZSBpdCBy
ZXZpc2l0ZWQgaWYKPiA+IGl0J3MgY29ycmVjdAo+ID4gCj4gPiBLb25yYWQKPiAKPiAKCi0tIApX
aXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
